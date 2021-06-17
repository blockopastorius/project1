#!/bin/bash

cd ~/Desktop/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis

grep "05:00:00 AM\|08:00:00 AM\|2:00 PM\|08:00:00 PM\|11:00:00 PM" 0315_Dealer_schedule | awk '{print $1, $2, $5, $6}' >> Dealers_working_during_losses.txt


