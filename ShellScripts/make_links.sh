#!/bin/bash

for i in `ls -a $HOME/git/workspace/Linux/ | grep \.[a-z]`;do ln -sf $HOME/git/workspace/Linux/$i;done

