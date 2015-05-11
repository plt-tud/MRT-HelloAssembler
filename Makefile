# Makefile
# Make sure that the workspace is located inside the MRT-Environment folder. 
# Otherwise adjust the $P variable below to point to the arm tools directory.
P="../../raspberrypi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/"
all: HelloAssembler
 
HelloAssembler: HelloAssembler.o
	"$(P)arm-linux-gnueabihf-ld" -o $@ $+
 
HelloAssembler.o: HelloAssembler.s
	"$(P)arm-linux-gnueabihf-as" -g --gstabs+ -o $@ $<
 
clean:
	rm -vf HelloAssembler *.o