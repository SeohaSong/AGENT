main() {
    local user=seohasong ip=10.113.138.178
    local key=$( cat ~/.ssh/id_rsa.pub )
    shs docker save -o ddd ddd
    sudo chmod 777 ddd
    scp ddd $user@$ip:~
    rm ddd
    ssh $user@$ip -t "
        sudo nvidia-persistenced --persistence-mode
        sudo docker load -i ddd
        rm ddd
        if [ ! -d .ssh ]; then mkdir .ssh; fi
        echo $key > .ssh/authorized_keys"
}
main
