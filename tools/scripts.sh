# docker command without sudo
sudo usermod -aG docker username
# allocate sudo power to user
usermod -aG sudo seohasong
# delete user
sudo deluser --remove-home seohasong
# add key to ssh agent
chmod 600 id_rsa
ssh-add
