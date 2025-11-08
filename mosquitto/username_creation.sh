#!bin/sh

if [ -n "$MQTT_USER" ] && [ -n "$MQTT_PASSWORD" ]; then
    echo "Setting up MQTT authentication"
    mosquitto_passwd -b /mosquitto/config/pwfile "$MQTT_USER" "$MQTT_PASSWORD"
    echo "Authentication configured for user $MQTT_USER"

else
    echo "No credentials provided"
fi
