#!/usr/bin/python3

from os import system as cmd

while input() != '  (use "git add <file>..." to include in what will be committed)': pass

while (i := input()) != '':
    cmd(f'git add {i.strip()}')
    cmd(f'git commit -m \'{i.strip()}\'')
