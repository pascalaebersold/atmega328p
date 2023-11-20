# atmega328p
how to programm the bootloader to an atmega328p with raspberry pi
sudo apt-get install bison flex libusb-dev
wget http://download.savannah.gnu.org/releases/avrdude/avrdude-6.1.tar.gz
tar xf avrdude-6.1.tar.gz
cd avrdude-6.1
./configure --prefix=/opt/avrdude --enable-linuxgpio
make
sudo make install
sudo vim /opt/avrdude/etc/avrdude.conf 
  -> Find linuxgpio and change to
  programmer
    id ="linuxgpio";
    desc = "Use the Linux sysfs interface to bitbang GPIO lines";
    type = "linuxgpio";
    reset = 15;
    sck = 18;
    mosi = 14;
    miso = 23;
  ;

