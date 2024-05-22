#!/bin/bash
filename=$1
howmany=${2:-4}
sort -nr $filename | head -$howmany

