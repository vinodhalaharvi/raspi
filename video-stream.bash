DIR=/home/pi/install/raspi/mjpg-streamer-git/mjpg-streamer/mjpg-streamer-experimental
cd $DIR && export LD_LIBRARY_PATH=. && ./mjpg_streamer -o "output_http.so -w ./www" -i "input_raspicam.so"
