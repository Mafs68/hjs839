#!/bin/sh

while true; do
  nohup python3 zi.py >> test.out
done &
