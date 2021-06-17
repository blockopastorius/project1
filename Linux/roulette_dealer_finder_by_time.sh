#!/bin/bash

cd ~/Desktop/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis

#argument order:time/AM:PM/date

grep "$1:00:00 $2" $3_Dealer_schedule | awk '{print $5 $6}'
