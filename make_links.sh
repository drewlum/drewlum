#!/bin/bash

for i in `ls -a $HOME/git/drewlum/Linux/ | grep \.[a-z]`;do ln -sf $HOME/git/drewlum/Linux/$i;done

