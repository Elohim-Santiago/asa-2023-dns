docker stop bind9 2> /dev/null

docker rm bind9 2> /dev/null

docker build -t bind9 . 

docker run -d -p 53:53/udp --name bind9 bind9

# netstat -anlp | grep 53
# por algum motivo, dar um kill no processo do dnsmasq
