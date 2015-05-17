# Makefile
# Make sure that the workspace is located inside the MRT-Environment folder. 
# Otherwise adjust the $P variable below to point to the arm tools directory.
P="../../raspberrypi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/"
all: Hallo
 
Hallo: Hallo.o
	"$(P)arm-linux-gnueabihf-ld" -o $@ $+
 
Hallo.o: Hallo.s
	"$(P)arm-linux-gnueabihf-as" -g --gstabs+ -o $@ $<
 
clean:
	rm -vf Hallo *.o
