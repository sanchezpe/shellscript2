#!/bin/bash

helloUser(){
echo Hi, $USER. Today is `date`
}


case $1 in
    hello|start)
        helloUser
        ;;
    goodbye|stop|quit)
        echo Adios!
        ;;
    help)
        echo Consult man pages
        ;;
    *) echo 'Type [ hello | start | goodbye | stop | quit | help ]';
        ;;
esac
