#!/bin/env python3

AUTOR = 'AUTOR'
DEFAULT_LANG = 'cpp'
YEAR = '2022'

import requests
import sys
import re

def comment(string):
    if lang == 'cpp':
        return '// ' + string
    elif lang == 'hs':
        return '-- ' + string
    elif lang == 'py':
        return '# ' + string
    else:
        raise Exception("Impossible")


args = sys.argv[1:]
lang = DEFAULT_LANG
daynum = None
part = '1'
while len(args) > 0:
    arg = args.pop(0)
    if not arg.startswith('-'):
        daynum = int(arg)
        continue
    if arg == '-l' or arg == '--lang':
        lang = args.pop(0)
    elif arg == '-2' or arg == '--part2':
        part = '2'
    elif arg == '-h' or arg == '--help':
        print(f"""\
Program to create a file for an AoC solution

USAGE:
  ./create_file.py [options] <daynumber>

NOTE: write <daynumber> without leading zeros

OPTIONS:
  -h, --help   Show this help message.
  -l, --lang   Select the language for the file.
                Available options are: hs, py & cpp.
  -2, --part2  Create file for the snd part instead.""")
        exit()
    else:
        print(f'Unknown flag {arg}')
        exit(1)

if daynum is None:
    print('Missing day number')
    print('Run with `--help` for help')
    exit(1)

url = f'https://adventofcode.com/{YEAR}/day/{daynum}'
if part == '2':
    url += '#part2'
page = requests.get(url)
if not page.ok:
    print('Failed getting the website')
    quit()

m = re.search(r'--- Day \d\d?: (.+?) ---', page.text)
if not m:
    print('Failed finding the title')
    quit()
else:
    title = m.group(1)

normalized_title = ''.join(c for c in title.lower() if 'a' <= c <= 'z')

filename = f'aoc2022day{daynum:02}{normalized_title}{part}.{lang}'

with open(filename, 'x') as f:
    f.write(comment(AUTOR) + '\n')
    f.write(comment(url) + '\n')
    f.write('\n')

print(filename)
