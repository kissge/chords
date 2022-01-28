import collections
import glob
from typing import Counter, Tuple

pairs: Counter[Tuple[str, str]] = collections.Counter()

for path in glob.glob('txt/*.txt'):
    with open(path) as fp:
        lines = [line.strip() for line in fp.readlines()]

    pairs.update(zip(lines, lines[1:]))

print('digraph G {')

for (a, b), w in pairs.items():
    if w >= 40:
        print('    "{}" -> "{}" [penwidth={}]'.format(a, b, w / 10))

print('}')
