apt-get update -y

apt-get install -y emacs24 screen git

apt-get install -y docker.io curl

curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-1.6.0 && chmod +x docker-1.6.0 && sudo mv docker-1.6.0 /usr/bin/docker


echo 'root:root' |chpasswd
sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

service ssh restart

# Download a newer kernel

