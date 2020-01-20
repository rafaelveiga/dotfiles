sudo apt install redis-server
sudo -i sed 's/supervised no/supervised systemd/' /etc/redis/redis.conf
