#!/bin/bash

id=$(date +%s)
echo test write
time dd if=/dev/zero of=/c3smo/hello.test.txt.$id bs=1000M count=1

echo test read
time dd of=/dev/zero if=/c3smo/hello.test.txt.$id bs=1000M count=1
