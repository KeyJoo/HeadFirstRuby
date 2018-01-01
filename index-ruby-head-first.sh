#!/bin/bash
# shell easy-script
# Vladimir Pavlychev https://github.com/KeyJoo
#
# Script demostrated print color Title & run ruby-script

clear

RED='\033[0;31m'
NC='\033[0m' # No Color

echo "Welcome to study book -${RED}Ruby Head First${NC}-"
sleep 3

echo ". .. ... .. . "

ruby get_number.rb 
