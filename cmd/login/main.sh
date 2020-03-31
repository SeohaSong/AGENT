port=$1
case $port in
22) ssh seohasong@$ANT_IP ;;
*) ssh ddd@$ANT_IP -p 2222 ;;
esac
