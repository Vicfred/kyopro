#!/bin/bash

ord() {
  printf "%d" "'$1"
}

lower() {
  tr '[:upper:]' '[:lower:]'
}

lint() {
  for file in $@; do
    filename=$(basename "$file")
    if [[ "$filename" =~ ^(a[br]c[0-9]{3})([a-fA-F])_(.+)_?\..+$ ]]; then
      contest=${BASH_REMATCH[1]}
      problem=${BASH_REMATCH[2]}
      file_problem_name=${BASH_REMATCH[3]}
      problem_low=$(echo $problem | lower)
      n=$(($(ord $problem_low) - $(ord a) + 1)) # problem number from 1 to 6 (A to F respectively)
      problem_name=$(curl -s "https://atcoder.jp/contests/$contest/tasks" | xmllint --html --xpath '//table/tbody/tr/td/a/text()' - | tail +$((2*n)) | head -n1)
      problem_name_normalized=$(echo $problem_name | lower | sed 's/ /_/g' | sed 's/[^a-zA-Z0-9]/_/g')
      if [ "$problem_name_normalized" != "$file_problem_name" ]; then
        echo "WARNING: Problem name in filename doesn't match in '$file'."
        echo "Expected: $problem_name_normalized"
        echo "Found: $file_problem_name"
      fi
    else
      echo "ERROR: File '$filename' doesn't follow the naming conventions."
    fi
  done
}

header() {
  echo "ERROR: Unimplemented"
  exit 1

  user=$1
  shift
  for file in $@; do
    echo $file
  done
}

help() {
  cat << EOM
Helper tool for kyopro. Currently only supports atcoder problems.

USAGE: ./kyopro.sh mode [arguments]

mode:
  lint [files]             verifies if the files follow the repo's conventions
  header <user> [files]    adds the usual headers to the files
  help                     shows this message
EOM
}

case "$1" in
  lint)
    shift
    lint $@
    ;;
  header)
    shift
    header $@
    ;;  
  help)
    help
    exit
    ;;
  *)
    echo "Unknown option: $1"
    help
    exit 1
    ;;
esac
