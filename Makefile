TOOLS=/home/jo/Dokumente/2015 - MRT-Environment-Script/GitHub repo/raspberrypi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/

# Makefile
all: first
 
first: first.o
	"$(TOOLS)arm-linux-gnueabihf-ld" -o $@ $+
 
first.o : first.s
	"$(TOOLS)arm-linux-gnueabihf-as" -g --gstabs+ -o $@ $<
 
clean:
	rm -vf first *.o