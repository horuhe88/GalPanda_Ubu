# make2

IDIR =/home/jorge/Downloads/arduino-1.5.3-Intel.1.0.4/hardware/arduino
IDIR2 =/home/jorge/Downloads/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/i586-poky-linux-uclibc/usr/include/sys
IDIR3 =/home/jorge/Downloads/arduino-1.5.3-Intel.1.0.4/hardware/tools/sysroots/i586-poky-linux-uclibc/usr/include/linux/serial.h
IDIR4 =/home/jorge/Downloads/arduino-1.5.3-Intel.1.0.4/hardware/arduino/edison/cores/arduino
CFLAGS=-I$(IDIR)
CC=g++
CC2=arm-linux-gnueabihf-g++
CC3=arm-linux-gnueabihf-gcc
ARCH=i386
ARCH2=armv7

#ScanLM: main.cpp
#			$(CC2) -o prueba main.cpp $(CFLAGS)/edison/cores/arduino/ $(CFLAGS)/x86/variants/galileo_fab_g/ $(CFLAGS)/edison/libraries/SPI/ -I.

##----------------------------------------------------------Para generar .o----------------------------------------------------------
ScanLM: main.cpp
			$(CC2) -march=$(ARCH2) -w -x c++ -ffunction-sections -fdata-sections -fno-exceptions -c $(IDIR)/edison/libraries/WiFi/WiFi.cpp $(IDIR)/edison/libraries/WiFi/WiFiUdp.cpp main.cpp -Wformat-extra-args $(IDIR)/edison/libraries/SPI/SPI.cpp $(CFLAGS)/edison/cores/arduino $(IDIR4)/IPAddress.cpp $(IDIR4)/Print.cpp $(IDIR4)/pulseIn.cpp $(IDIR4)/RingBuffer.cpp $(IDIR4)/softwarepwm.cpp $(IDIR4)/Stream.cpp $(IDIR4)/Tone.cpp $(IDIR4)/TTYUART.cpp $(IDIR4)/UtilMisc.cpp $(IDIR4)/UtilTime.cpp $(IDIR4)/variant.cpp $(IDIR4)/WMath.cpp $(IDIR4)/WString.cpp   $(IDIR4)/wiring_digital.c $(CFLAGS)/edison/libraries/SPI $(CFLAGS)/edison/libraries/WiFi -I$(IDIR3) -L$(IDIR)/edison/cores #$(IDIR)/edison/cores/arduino/trace.c 
#-------------------------------------------------------------------------------------------------------------------------------------





















##--------------------------------------------------------------------------------------------------------------------------------------
#ScanLM: HolaMundo.o
#			$(CC2) -o HolaM -march=armv7 HolaMundo.o -w -ffunction-sections -fdata-sections -fno-exceptions -Wformat-extra-args

#ScanO: WiFi.o WiFiUdp.o SPI.o main.o		
#		     $(CC) -o test.bin -m32 -Wl,-static WiFi.o WiFiUdp.o SPI.o main.o #-L/usr/lib/gcc/x86_64-linux-gnu/4.8

#‘--trace’
#
#    Show tracing information for make execution. Prints the entire recipe to be executed, even for recipes that are normally 
#	 silent (due to .SILENT or ‘@’). Also prints the makefile name and line number where the recipe was defined, and information #	  on why the target is being rebuilt.
