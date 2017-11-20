#!/usr/bin/env bash

set -e

adb push libs/armeabi-v7a/memo-pad-7-test /data/local/tmp/memo-pad-7-test
adb push libs/armeabi-v7a/zenfone-2-test /data/local/tmp/zenfone-2-test
adb push libs/armeabi-v7a/zenfone-2e-test /data/local/tmp/zenfone-2e-test
adb push libs/armeabi-v7a/zenfone-c-test /data/local/tmp/zenfone-c-test

adb shell "/data/local/tmp/memo-pad-7-test --gtest_color=yes"
adb shell "/data/local/tmp/zenfone-2-test --gtest_color=yes"
adb shell "/data/local/tmp/zenfone-2e-test --gtest_color=yes"
adb shell "/data/local/tmp/zenfone-c-test --gtest_color=yes"