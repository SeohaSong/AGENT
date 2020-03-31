# docker command without sudo
sudo usermod -aG docker username
# allocate sudo power to user
usermod -aG sudo seohasong
# delete user
sudo deluser --remove-home seohasong

# change accessibility of id_rsa
chmod 600 id_rsa
# add key to ssh agent
ssh-add
