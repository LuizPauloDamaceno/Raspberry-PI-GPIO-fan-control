# Raspberry-PI-GPIO-fan-control
Um controle de cooler para Raspberry PI dependente da temperatura da CPU ;)
A simple fan control for Raspberry PI with temperature trigger.

-> You can set whatever GPIO to use (I choose GPIO number 21)
-> You can set lower temperatures to enable the fan (I choose 56ºC).
-> I'm used a 5V fan with BC 337 transistor (injected the GPIO signal at base of transistor).

-> Dont forget to change file permissions to execute it, the command is "chmod 755 fan_control.sh".

-> To run this script you need to type "sudo ./fan_control.sh".
