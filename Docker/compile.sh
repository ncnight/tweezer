#!/bin/bash

proc=$(grep -c processor /proc/cpuinfo)

make -C tweezer -j${proc} db_bench DEBUG_LEVEL=0
make -C tweezer -j${proc} static_lib  DEBUG_LEVEL=0
make -C tweezer -j${proc} rocksdbjavastatic DEBUG_LEVEL=0

make -C speicher_V1 -j${proc} db_bench DEBUG_LEVEL=0
make -C speicher_V1 -j${proc} static_lib DEBUG_LEVEL=0
make -C speicher_V1 -j${proc} rocksdbjavastatic DEBUG_LEVEL=0