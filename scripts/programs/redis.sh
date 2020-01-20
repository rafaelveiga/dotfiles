sudo apt install redis-server
sudo sed 's/supervised no/supervised systemd/' /etc/redis/redis.conf
