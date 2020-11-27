#!/usr/bin/env bash

if [ -f /etc/redhat-release ]; then
  export USM_OS_TYPE='centos';
fi

if [ -f /etc/lsb-release ]; then
   export USM_OS_TYPE='ubuntu';
fi

if [[ $(uname) == Darwin ]]; then
  export USM_OS_TYPE='macos';
fi
