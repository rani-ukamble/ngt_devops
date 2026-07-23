cd monitoring-framework

chmod +x *.sh
chmod +x modules/*.sh


# Success

apt update
apt install nginx -y

systemctl start nginx
systemctl is-active nginx

./main.sh

# Failure

systemctl stop nginx
systemctl is-active nginx

./main.sh


* temp update config.sh
CPU_THRESHOLD=1

./main.sh