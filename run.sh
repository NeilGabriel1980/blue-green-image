ENV_NETWORK="net"
docker network create $ENV_NETWORK

docker run --rm --network $ENV_NETWORK
docker run -d --rm --network $ENV_NETWORK --name green    -e COLOR=green neilgabriel/blue-green-image
docker run -d --rm --network $ENV_NETWORK --name blue     -e COLOR=blue  neilgabriel/blue-green-image
docker run -d --rm --network $ENV_NETWORK --name haproxy  -p 8080:80       -v $PWD/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro haproxy
