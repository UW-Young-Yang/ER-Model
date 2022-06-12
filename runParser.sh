#!/bin/bash

rm user.dat bidder.dat item.dat category.dat 
python ebay_parser.py ebay_data/items-*.json

sort -u user.dat -o user.dat
sort -u bidder.dat -o bidder.dat
sort -u item.dat -o item.dat
sort -u category.dat -o category.dat