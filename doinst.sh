#!/bin/sh

if [ -x sbin/ldconfig ]; then
( cd usr/lib64 ; ln -sf usr/lib64/x86_64-linux-gnu/libze_intel_gpu.so.1 libze_intel_gpu.so )
( cd usr/lib64 ; rm -rf libigdgmm.so )
( cd usr/lib64 ; ln -sf usr/lib64/x86_64-linux-gnu/libigdgmm.so.12 libigdgmm.so )
( cd usr/lib64 ; sbin/ldconfig -r . 2> /dev/null )
fi 

if [ -x usr/bin/updatedb ]; then
    usr/bin/updatedb 2> /dev/null
fi
