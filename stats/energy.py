#!/usr/bin/env python

import socket
import time
import sys
import datetime


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('bognor.sm', 2002))

print datetime.datetime.now()

t0 = time.time()
v1p = None
v5p = None
while True:
  s.send('cmd\n')
  v5c, v1c = map(int, s.recv(1024).strip().split('=')[1].split('!')[:2])
  if v1p is None or v5p is None:
    v1p = v1c
    v5p = v5c
  else:
    v1 = v1c - v1p
    v5 = v5c - v5p
    v1p, v5p = v1c, v5c
    
    if v5 != 0 and v1 != 0:
      print('%f, %d, %d' % (time.time() - t0, v5,  v1))
      sys.stdout.flush()
  
  time.sleep(0.01)

s.close()

