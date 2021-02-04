#!/bin/bash                                                                                                                                                                                                         
while true; do                                                                                                                                                                                                              
    python3 ~/checkstock/writefiles.py                                                                                                                                                                                  
    echo $$ > ~/checkstock/pid_file                                                                                                                                                                                     
    stock3060=$(cat 3060)                                                                                                                                                                                               
    stock3070=$(cat 3070)                                                                                                                                                                                                                                                                                                                                                                                                                   
    if [ "${stock3060}" == "Coming soon" ]; then                                                                                                                                                                                
        echo -e "[ INFO ] - $(date '+%F [%T]') - GTX3060 - BestBuy - ${stock3060}" >> ~/checkstock/log.txt                                                                                                   
        echo -e "[ \033[33mINFO\033[0m ] - $(date '+%F [%T]') - GTX3060 - BestBuy - ${stock3060}"                                                                                                                   
    else                                                                                                                                                                                                                        
        echo -e "[ ALERT ] - $(date '+%F [%T]') - GTX3060 - BestBuy - ${stock3060}" >> ~/checkstock/log.txt                                                                                                  
        echo -e "[ \033[31mALERT\033[0m ] - $(date '+%F [%T]') - GTX3060 - BestBuy - ${stock3060}"                                                                                                                          
        printf "\a"                                                                                                                                                                                                 
    fi     

    if [ "${stock3070}" == "Coming soon" ]; then                                                                                                                                                                                
        echo -e "[ \033[33mINFO\033[0m ] - $(date '+%F [%T]') - GTX3070 - BestBuy - ${stock3070}" >> ~/checkstock/log.txt                                                                                                   
        echo -e "[ \033[33mINFO\033[0m ] - $(date '+%F [%T]') - GTX3070 - BestBuy - ${stock3070}"                                                                                                                   
    else                                                                                                                                                                                                                        
        echo -e "[ \033[31mALERT\033[0m ] - $(date '+%F [%T]') - GTX3070 - BestBuy - ${stock3070}" >> ~/checkstock/log.txt                                                                                                  
        echo -e "[ \033[31mALERT\033[0m ] - $(date '+%F [%T]') - GTX3070 - BestBuy - ${stock3070}"                                                                                                                          
        printf "\a"                                                                                                                                                                                                 
    fi                                                                                                                                                                                                          
done    
