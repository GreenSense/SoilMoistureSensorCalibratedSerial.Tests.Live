echo "Testing project"
echo "  Dir: $PWD"

#export GARDEN_HOST=garden
#export MOSQUITTO_HOST=garden
#export MOSQUITTO_USERNAME=user
#export MOSQUITTO_PASSWORD=pass

DEVICE_NAMES_LIST=$(cat mqtt-device-names.security)

for i in $(echo $DEVICE_NAMES_LIST | sed "s/,/ /g")
do
    sh test-device.sh $i
done
