#!/bin/bash

TEST_VAR="test"
#turn on 
set -x
echo $TEST_VAR
#turn off
set +x
hostname
ping -c 10 www.google.com
