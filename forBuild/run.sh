#!/bin/bash

amazon-ssm-agent -register -code sApMne7IERsy41PEf4Jc -id 811d9423-695a-4014-80b5-f33a0d00661e -region ap-northeast-1
amazon-ssm-agent &

node /src/index.js &
# Activation Code   sApMne7IERsy41PEf4Jc
# Activation ID   811d9423-695a-4014-80b5-f33a0d00661e
while true; do sleep 1000; done