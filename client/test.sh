#!/bin/bash

echo test write
time dd if=/dev/zero of=/c3sm/hello.test.txt bs=1000M count=1

echo test read
time dd of=/dev/zero if=/c3sm/hello.test.txt bs=1000M count=1

echo clean
time rm /c3sm/hello.test.txt
