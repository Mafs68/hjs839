#!/bin/sh

while true; do
  nohup python zi.py >> test.out
done &
