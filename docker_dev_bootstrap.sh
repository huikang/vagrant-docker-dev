apt-get update -y

apt-get install -y emacs24 screen git

apt-get install -y docker.io curl

curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-1.6.0 && chmod +x docker-1.6.0 && sudo mv docker-1.6.0 /usr/bin/docker


echo 'root:root' |chpasswd
sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

service ssh restart

# Install aufs
apt-get -y update
apt-get -y install linux-image-extra-$(uname -r)

# Install packages for compiling CRIU
apt-get install -y build-essential  asciidoc
apt-get install -y protobuf-c-compiler libprotobuf-c0-dev \
    libbsd-dev protobuf-compiler python-ipaddr pkg-config \
    protobuf-compiler libprotobuf-dev libprotoc-dev libaio-dev

