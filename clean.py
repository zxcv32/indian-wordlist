#!/bin/env python
source = open('airtel_pass.txt', 'r')
unique = set()
for line in source.readlines():
    unique.add(line[line.index(":")+1:].strip())

print('\n'.join(unique))

# python clean.py >> indian-passwords
