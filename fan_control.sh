#!/bin/sh

echo 21 > /sys/class/gpio/export #tells to controller to enable GPIO number 21
echo out > /sys/class/gpio/gpio21/direction #defines GPIO 21 as output

while(true) #dummy infinite loop
do
hwtemp=$(cat /sys/class/thermal/thermal_zone0/temp) #reads actual temperature
hwtemp=$((hwtemp/1000)) #temperature reading is in mCelcius, so we need to converte to celcius.

if [ "$hwtemp" -ge "45" ]; then #send a high GPIO state if CPU temperature is higher than 56ºC
echo 1 > /sys/class/gpio/gpio21/value #high GPIO state
else #lower than 56, disables the fan.
echo 0 > /sys/class/gpio/gpio21/value #low GPIO state
fi
sleep 0.005 #sleep 100mS
done
