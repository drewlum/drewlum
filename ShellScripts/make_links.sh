#!/bin/bash
WORKDIR="${HOME}/git/drewlum/Linux"
for i in `ls -a ${WORKDIR} | grep \.[a-z]`;do ln -sf ${WORKDIR}/$i;done

