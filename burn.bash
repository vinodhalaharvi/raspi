if [ -z $1 ] ; then echo  "arg1 which is image is missing .. " ; exit 99; fi; 
if [ -z $2 ] ; then echo  "arg2 which is device name is missing .. " ; exit 99; fi; 

sudo diskutil unmountDisk /dev/"$2"
sudo dd bs=1m if="$1" of=/dev/"$2"
