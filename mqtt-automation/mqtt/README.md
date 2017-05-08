vagrant up 
vagrant ssh 
sudo apt-get install mosquitto mosquitto-clients
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot
sudo ufw allow http
sudo certbot certonly --standalone --standalone-supported-challenges http-01 -d YOUR_DOMAIN_NAME
# Example 
# sudo certbot certonly --standalone --standalone-supported-challenges http-01 -d mqtt.example.com


