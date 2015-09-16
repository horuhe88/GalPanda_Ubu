# make2

#IDIR0 = /home/jorge/Downloads/arduino-1.5.3-Intel.1.0.4/hardware/arduino/edison
IDIR = /home/jorge/Downloads/arduino-1.5.3-Intel.1.0.4/hardware/arduino/edison
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
#ScanLM: main.cpp
			#$(CC2) -march=$(ARCH2) -w -x c++ -ffunction-sections -fdata-sections -fno-exceptions -fpermissive -c $(IDIR)/libraries/WiFi/WiFi.cpp $(IDIR)/libraries/WiFi/WiFiUdp.cpp main.cpp -Wformat-extra-args $(IDIR)/libraries/SPI/SPI.cpp $(CFLAGS)/cores/arduino $(IDIR4)/IPAddress.cpp $(IDIR4)/Print.cpp $(IDIR4)/pulseIn.cpp $(IDIR4)/RingBuffer.cpp $(IDIR4)/softwarepwm.cpp $(IDIR4)/Stream.cpp $(IDIR4)/Tone.cpp $(IDIR4)/TTYUART.cpp $(IDIR4)/UtilMisc.cpp $(IDIR4)/UtilTime.cpp $(IDIR4)/variant.cpp $(IDIR4)/WMath.cpp $(IDIR4)/WString.cpp  $(IDIR4)/fast_gpio_common.c $(IDIR4)/fast_gpio_nc.c $(IDIR4)/fast_gpio_pci.c $(IDIR4)/fast_gpio_sc.c $(IDIR4)/i2c.c $(IDIR4)/interrupt.c $(IDIR4)/mux.c $(IDIR4)/sysfs.c $(IDIR4)/trace.c $(IDIR4)/wiring_analog.c $(IDIR4)/wiring_digital.c $(CFLAGS)/libraries/SPI $(CFLAGS)/libraries/WiFi -L$(IDIR)/cores -larduino -I. #-I$(IDIR3) $(IDIR)/cores/arduino/trace.c 
#-------------------------------------------------------------------------------------------------------------------------------------


#ScanLM: main.cpp
			#$(CC2) -march=$(ARCH2) -w -x c++ -ffunction-sections -fdata-sections -fno-exceptions -fpermissive -c $(IDIR)/libraries/WiFi/WiFi.cpp $(IDIR)/libraries/WiFi/WiFiUdp.cpp main.cpp -Wformat-extra-args $(IDIR)/libraries/SPI/SPI.cpp $(CFLAGS)/cores/arduino $(IDIR4)/*.cpp $(IDIR4)/wiring_analog.c $(IDIR4)/wiring_digital.c $(CFLAGS)/libraries/SPI $(CFLAGS)/libraries/WiFi -L$(IDIR)/cores -I. -lm #-I$(IDIR3) $(IDIR)/cores/arduino/trace.c 
#-------------------------------------------------------------------------------------------------------------------------------------

ScanLM: main.cpp
			$(CC3) -march=$(ARCH2) -w -c $(IDIR4)/wiring_analog.c $(IDIR4)/wiring_digital.c -L$(IDIR)/cores -I. -lm #-I$(IDIR3) $(IDIR)/cores/arduino/trace.c 

















##--------------------------------------------------------------------------------------------------------------------------------------
#ScanLM: HolaMundo.o
#			$(CC2) -o HolaM -march=armv7 HolaMundo.o -w -ffunction-sections -fdata-sections -fno-exceptions -Wformat-extra-args

#ScanO: WiFi.o WiFiUdp.o SPI.o main.o		
#		     $(CC) -o test.bin -m32 -Wl,-static WiFi.o WiFiUdp.o SPI.o main.o #-L/usr/lib/gcc/x86_64-linux-gnu/4.8

#‘--trace’
#
#    Show tracing information for make execution. Prints the entire recipe to be executed, even for recipes that are normally 
#	 silent (due to .SILENT or ‘@’). Also prints the makefile name and line number where the recipe was defined, and information #	  on why the target is being rebuilt.
