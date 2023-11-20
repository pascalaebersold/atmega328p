sudo /opt/avrdude/bin/avrdude -p atmega328p -c linuxgpio -U flash:w:bootloader.hex
sudo /opt/avrdude/bin/avrdude -p atmega328p -c linuxgpio -U efuse:w:0x05:m
sudo /opt/avrdude/bin/avrdude -p atmega328p -c linuxgpio -U hfuse:w:0xDE:m
sudo /opt/avrdude/bin/avrdude -p atmega328p -c linuxgpio -U lfuse:w:0xFF:m
