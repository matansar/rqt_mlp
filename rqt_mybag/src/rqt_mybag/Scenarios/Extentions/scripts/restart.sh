#!/bin/bash
kill -9 `ps aux | grep ros | grep -v grep | awk '{print $2}'`
kill -9 `ps aux | grep rqt | grep -v restart | grep -v grep | awk '{print $2}'`
roscore &
sleep 1
rosrun rqt_mybag rqt_mybag