#!/bin/bash

ord() {
  printf "%d" "'$1"
}

lower() {
  tr '[:upper:]' '[:lower:]'
}

get_problem_name() {
  contest=$(echo $1 | lower)
  problem=$(echo $2 | lower)
  n=$(($(ord $problem) - $(ord a) + 1)) # problem number from 1 to 6 (A to F respectively)
  problem_name=$(curl -s "https://atcoder.jp/contests/$contest/tasks" | xmllint --html --xpath '//table/tbody/tr/td/a/text()' - 2> /dev/null | tail +$((2*n)) | head -n1)
  echo "$problem_name"
}

get_contest() {
  echo ${1:0:6}
}

get_letter() {
  echo ${1:6:1}
}

normalize() {
  # Normalization description:
  # Remove everything that is in parenthesis
  # Trailing spaces get removed
  # Some special characters get removed: `'` and `?`
  # Then everything that isn't alphanumeric gets replaced by `_`
  # If nothing but undersocores is left, an empty string is returned
  
  normalized=$(echo "$1" | lower | sed 's/(.\+)//g' | sed 's/ \+$//' | sed "s/\(?\|'\)//g" | sed 's/[^a-z0-9]/_/g')

  if [ -z "${normalized//_}" ]; then
    normalized=
  fi

  echo $normalized
}

comment() {
  lang=$1
  line=$2

  start=
  case $lang in
    rs|cr|py|nim|sh|awk|bash|jl|pl|r|raku)
      start='#'
      ;;
    c|cpp|d|java|go|js|kt|php|rs|scala|zig)
      start='//'
      ;;
    hs|adb|lua)
      start='--'
      ;;
    cl|asm|lisp|scm)
      start=';;'
      ;;
    f)
      start='!'
      ;;
    *)
      echo ERROR: Language not supported: $lang
      exit 1
      ;;
  esac

  echo $start "$line"
}

# -----------------------------------------------------------------
# ----------- MODES -----------------------------------------------
# -----------------------------------------------------------------

lint() {
  for file in $@; do
    filename=$(basename "$file")
    if [[ "$filename" =~ ^(a[br]c[0-9]{3}[a-fA-F])_(.+)\.(.+)$ ]]; then
      problem=$(echo ${BASH_REMATCH[1]} | lower)
      contest=$(get_contest $problem)
      letter=$(get_letter $problem)

      file_problem_name=$(echo ${BASH_REMATCH[2]} | sed 's/_\+$//')
      lang=${BASH_REMATCH[3]}

      problem_name=$(get_problem_name $contest $letter)
      problem_name_normalized=$(normalize "$problem_name")

      if [ "$problem_name_normalized" != "$file_problem_name" ]; then
        echo "WARNING: Problem name in filename doesn't match in '$file'."
        echo "Expected: $problem_name_normalized"
        echo "Found: $file_problem_name"
      fi

      url="https://atcoder.jp/contests/$contest/tasks/${contest}_$letter"
      file_url=$(cat "$file" | tail +2 | head -n1)

      expected="$(comment $lang $url)"

      if [ "$expected" != "$file_url" ]; then
        echo "WARNING: URL comment doesn't match in '$file'."
        echo "Expected: $expected"
        echo "Found: $file_url"
      fi
    else
      echo "ERROR: File '$filename' doesn't follow the naming conventions."
    fi
  done
}

create() {
  while [ "$#" -gt 2 ]; do
    case $1 in
      -u|--user)
        user=$2
        shift
        ;;
      -e|--edit)
        edit=y
        ;;
      *)
        echo ERROR: Unrecognized option: $1
        exit 1
        ;;
    esac
    shift
  done

  contest=$(get_contest $1 | lower)
  problem=$(get_letter $1 | lower)
  lang=$2

  problem_name=$(get_problem_name $contest $problem)
  problem_name_normalized=$(normalize "$problem_name")

  file="atcoder/$contest${problem}_${problem_name_normalized}.$lang"
  url="https://atcoder.jp/contests/$contest/tasks/${contest}_$problem"

  if [ -e "$file" ]; then
    echo ERROR: file "$file" already exists.
    exit 1
  fi

  comment $lang $user >> $file
  comment $lang $url >> $file
  comment $lang >> $file

  echo "File $file created."

  if [ -n "$edit" ]; then
    if [ -n "$EDITOR" ]; then
      $EDITOR "$file"
    else
      echo "EDITOR variable not set."
    fi
  fi
}

help() {
  cat << EOM
Helper tool for kyopro. Currently only supports atcoder problems.

USAGE: ./kyopro.sh mode [opt] [arguments]

mode:
  l/lint [files]                     verifies if the files follow the repo's conventions
  c/create [opt] <problem> <lang>    creates the file corresponding to the problem.
                                       <problem> should follow the format abcXXXx.
                                       <lang>    should correspond to the file extension.
  h/help                             shows this message

opt:
  -u/--user <username>               add the username
  -e/--edit                          open file in editor
EOM
}

case "$1" in
  l|lint)
    shift
    lint $@
    ;;
  c|create)
    shift
    create $@
    ;;
  h|help)
    help
    exit
    ;;
  *)
    echo "Unknown option: $1"
    help
    exit 1
    ;;
esac
