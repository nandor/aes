#!/usr/bin/env python

from collections import defaultdict
from dateutil.parser import parse
import datetime
import math

IDLE_POWER=32
TIME_SCALE=1

def stat(xs):
  s = sum(xs)
  n = float(len(xs))
  m = s / n
  var = 0
  for x in xs:
    var += (x - m) * (x - m)
  return m, math.sqrt(var / (n - 1))

with open('energy_%d.log' % TIME_SCALE) as f:
  lines = f.readlines()
  startTime = parse(lines[0])
  energy = [[w.strip() for w in l.strip().split(', ')] for l in lines[1:]]


benches = []
with open('timing_%d.log' % TIME_SCALE) as t:
  lines = t.readlines()
  t0 = parse(lines[0].split(' ')[0]).replace(tzinfo=None)
  for i, line in zip(range(len(lines)), lines):
    start, end, dt = line.split(' ')
    start = t0 + (parse(start).replace(tzinfo=None) - t0) * TIME_SCALE
    end = t0 + (parse(end).replace(tzinfo=None) - t0) * TIME_SCALE
    dt = float(dt.strip()) * TIME_SCALE
    benches.append((start, end, dt, i))

data = defaultdict(list)

for t0, _, v1 in energy:
  t = startTime + datetime.timedelta(seconds=float(t0))

  for (st, en, dt, idx) in benches:
    if st <= t and t <= en:
      data[idx].append((max(float(v1) - IDLE_POWER, 0), dt))


grouped = defaultdict(list)
for idx, xs in data.items():
  grouped[int(idx / 5)].append((
      sum(v1 for v1, _ in xs),
      xs[0][1]
  ))

for idx, xs in grouped.items():
  print(stat([v1 * 64/77 for v1, _ in xs]), stat([t * 64/77for _, t in xs]))
