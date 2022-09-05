#!/bin/bash

App="/bin/jekyll"
pid=`ps -ef|grep $App | grep -v grep|awk '{print $2}' `


demoFun(){
    echo "这是我的第一个 shell 函数!"
}
demoFun
killProsess() {
	echo "PID: $pid"
	kill -9 $pid
}
killProsess 
cd /jekyll-theme-memoirs && nohup bundle exec jekyll serve -H 0.0.0.0 --watch &
