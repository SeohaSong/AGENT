upload() {
    local name=$1
    local user=seohasong ip=10.113.138.178
    if [ ! -f $name*.deb ]; then
        apt download $name
        scp $name*.deb $user@$ip:~
        ssh $user@$ip -t "
            sudo dpkg -i $name*.deb && rm $name*.deb" && rm $name*.deb
    fi
}

# upload libnvidia-container1
# upload libnvidia-container-tools
# upload nvidia-container-toolkit

# upload dkms
# upload libc6-i386
# upload lib32gcc1
# upload nvidia-418

# upload libcuda1-418

# upload nvidia-opencl-icd-418
