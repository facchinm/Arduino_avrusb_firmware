if [ ! -d distrib ]; then
mkdir distrib
fi

echo "Compiling 16u2 firmwares (UNO and Mega)"
cd arduino-usbserial
make clean && ARDUINO_MODEL_PID=0x0043 make #Arduino UNO R3
mv Arduino-usbserial.hex ../distrib/ArduinoUNOR3_16u2.hex
make clean && ARDUINO_MODEL_PID=0x0243 make #Genuino UNO R3
mv Arduino-usbserial.hex ../distrib/GenuinoUNOR3_16u2.hex
make clean && ARDUINO_MODEL_PID=0x0043 make #Arduino Mega2560 R3
mv Arduino-usbserial.hex ../distrib/ArduinoMega2560_16u2.hex
make clean && ARDUINO_MODEL_PID=0x0242 make #Genuino Mega2560 R3
mv Arduino-usbserial.hex ../distrib/GenuinoMega2560_16u2.hex
cd ..

echo "Compiling 32u4 bootloaders (Micro)"
cd Caterina2
make clean && ARDUINO_MODEL_PID=0x0037 make #Arduino Micro
mv Caterina2.hex ../distrib/Caterina2_ArduinoMicro.hex
make clean && ARDUINO_MODEL_PID=0x0237 make #Genuino Micro
mv Caterina2.hex ../distrib/Caterina2_GenuinoMicro.hex
cd ..