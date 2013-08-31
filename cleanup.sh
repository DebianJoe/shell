#!/bin/bash

BACKUPS=`ls -a $PWD | grep "~" `
for FILE in $BACKUPS;
	do
		rm -i $FILE
	done

YEAR=`date | awk '{print $NF}'`
SCROTS=`ls -a | grep $YEAR`
for SCROT in $SCROTS;
	do
		rm -i $SCROT
	done
