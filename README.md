bladewaterfall
==============

bladerf stand alone waterfall and 3d visualisation


Simple waterfall program. works fine with macosx & linux.

Requires glut.

run just as

./fft_blade -f *frequency in hz* -b *bandwidth in Mhz*


When running, use the arrow keys to move in frequency, 
spacebar to switch mode
escape to leave


Thank you to the rtlsdr code bases and nuand sample codes as my initial organ bank

----

Notes
=====

For Mac you will need to use

```
  sudo port install freeglut
```

and maybe some others

Configure your path to libbladerf
