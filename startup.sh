#!/usr/bin/sh 
myIp=$(hostname -i)
bundle exec jekyll serve --host $myIp --verbose
