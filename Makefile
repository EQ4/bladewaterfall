# configure bladeRF source path
#BLADERFPATH=/home/benoit/bladeRF
BLADERFSRC_PATH=$(HOME)/devel/bladeRF

LIBUSB_CFLAGS=`pkg-config --cflags libusb-1.0`
CFLAGS=$(LIBUSB_CFLAGS) -O4 `pkg-config --cflags libbladeRF`
BLADERF_CFLAGS=-I$(BLADERFSRC_PATH)/host/build/common/include -I$(BLADERFSRC_PATH)/host/common/include
GL_LIBS=-lGL -lglut
LIBS=`pkg-config --libs libbladeRF` -lpthread -lm $(GL_LIBS)

all: fft_blade

fft_blade: ui.c fft_blade.c blde.h fft.c
	g++   -DENABLE_LIBBLADERF_SYNC -DHAVE_LIBUSB_GET_VERSION  $(CFLAGS) $(BLADERF_CFLAGS) -c    fft_blade.c -o fft_blade.c.o
	g++  $(CFLAGS) -c  ui.c -o ui.c.o
	cc  ui.c.o fft_blade.c.o   -o fft_blade  $(LIBS)



clean:
	-rm fft_blade
	-rm -rf *.dSYM
	-rm -rf *.o
