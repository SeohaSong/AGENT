ssh seohasong@$ANT_IP -t "
    if [ -d AGENT ]; then rm -rf AGENT; fi
    mkdir AGENT"
cp -r $DDD_PATH/ddd __tmp__
rm -rf __tmp__/.git
scp -r __tmp__ seohasong@$ANT_IP:AGENT/ddd
rm -r __tmp__
ssh seohasong@$ANT_IP -t "
    $ANT_CMD __profile__
    chmod -R 777 AGENT"
