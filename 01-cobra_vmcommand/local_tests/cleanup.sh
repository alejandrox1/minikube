#!/usr/bin/env bash


vboxmanage controlvm "mymachine" poweroff --type headless \
    && vboxmanage unregistervm "mymachine" --delete \
    && vboxmanage list vms
