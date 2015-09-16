.TL
aijuboard Manual
.AU
Julius Schmidt
.NH
Taking care of your board
.PP
There is a few things that you should beware of as they may cause serious damage to the board.
.IP \(bu
Like all circuit boards aijuboard is sensitive to electrostatic discharge (ESD).
While circuit boards are generally less sensitive than individual chips, you probably should not touch aijuboard directly after stroking your cat.
.IP \(bu
Applying too much voltage to any pin will cause potentially serious damage where `too much voltage' can be as little as 1.1\ V for pins nominally 1.0\ V.
In particular the absolute maximum for the 3.3\ V GPIO pins is 3.85\ V:
Do not connect them to 5\ V logic!
.IP \(bu
Take care not to short 5\ V to either logic pins or 3.3\ V.
.IP \(bu
Do not attempt to operate aijuboard with a power supply of the wrong voltage or wrong polarity. Do not attempt to use an unregulated power supply.
.IP \(bu
There is a 10\ A surface mount fuse on the board.
To avoid blowing this fuse, do not operate aijuboard with a power supply capable of supplying 10\ A or more (e.g. PC power supplies) without an extra fuse.
.IP \(bu
Do not operate aijuboard on a conductive surface.
.IP \(bu
Do not place jumpers in any position not specifically mentioned in this manual.
.IP \(bu
The heatsink is glued to the system-on-chip.
Do not try to remove the heatsink and take care never to apply too much force to it, even accidentally.
.NH
Quick start guide
.PP
.nr i 0 1
.IP \n+i.
Verify that both the TX and RX jumpers on P3 are in place.
Verify that the boot jumper on P1 is set to `ROM' and not `JTAG'.
.IP \n+i.
Insert an SD card with a bootable image; alternatively, connect Ethernet and set up another Plan 9 computer to DHCP boot, using the the zynq kernel (the default MAC address is
.CW 0ea7deadbeef ).
.IP \n+i.
Connect the USB-B connector to a host.
Linux and 9front should work out of the box, you may need to install FT2232H drivers on Windows.
.IP \n+i.
Connect the board to the power supply.
The `power' LED should turn on.
.IP \n+i.
Open a terminal program on the host set to 115200 baud 8N1.
You want to use the
.I second
serial port provided by the FT2232H, e.g. on 9front run
.P1
echo b115200 >/dev/eiaU*.1ctl
con -r /dev/eiaU*.1
.P2
whereas on Linux you should run
.P1
screen /dev/ttyUSB1 115200
.P2
.NH
Introduction
.PP
aijuboard is a single board computer built around the Xilinx Zynq XC7Z015-1CLG485C system-on-chip (SoC).
It has two ARM Cortex-A9 MPCore CPUs that together with supporting devices form the `Processing System' (PS).
In addition it has a 46,200\ LUT field-programmable gate array (FPGA) using Xilinx 7 Series (Artix-7) Architecture that forms the `Programmable Logic' (PL).
We will usually be sloppy with terminology and refer to the PS and PL as the CPU and the FPGA, respectively.
.FS
PS and PL are the terms used in Xilinx documentation but they are not as evocative as the more common terms CPU and FPGA.
It should be pointed out that they are technically more correct, as the PS and PL contain more than just a CPU (never mind that there are two cores!) and an FPGA.
.FE
Almost all devices are connected to one of the CPU or the FPGA and cannot directly be accessed by the other (an exception to this is 1\ GB of DDR3 memory that is shared between the CPU and FPGA).
This means in particular that during FPGA development (i.e. frequent reprogramming of the FPGA with your own bitstreams), you will not have access to the FPGA connected devices such as Displayport or SATA.
.PP
The SoC is very well documented in the Xilinx UG585 Zynq Technical Reference Manual (TRM).
You are referred to this document for details on register interfaces etc.
If you want to work on the 9front kernel or write your own kernel, you should definitely peruse this document.
.NH
CPU devices
.PP
For the most part the CPU devices should `just work' with the 9front kernel.
The devices accessible by the CPU subsystem are
.IP \(bu
10/100/1000 Ethernet using the Zynq's MAC and the Micrel KSZ9031RNX PHY.
The bootloader sets the MAC address to
.CW 0ea7deadbeef ,
but you could equally well set it to any other valid MAC address.
.IP \(bu
2\(mu USB 1.1/2.0 host ports using the Zynq's EHCI controller and Texas Instruments TUSB1210 PHY.
.IP \(bu
A serial line.
On boot it is setup as 115200 baud, 8 bits, no parity, one stop bit.
This is by default connected to the FT2232H USB-to-serial (and USB-to-JTAG) converter.
By removing the jumpers on P3 it is possible to get direct access to the 3.3\ V level signals which could be connected to, e.g., a RS232 level converter.
.IP \(bu
16\ MB of flash memory (N25Q128).
Currently this is used only to store the bootloader.
It could also store the kernel but the code is not there for it yet.
The 64\ KB sector size limits its applicability.
.IP \(bu
an SD card slot.
None of the UHS modes are supported and the maximum speed is hence 25\ MB/s.
.NH
The CPU-FPGA interface
.PP
The CPU can program the FPGA using the internal configuration access port (ICAP).
In 9front this is achieved by simply copying the bitstream into 
.CW /dev/pl .
To get a suitable bitstream you need to set Vivado to generate a
.CW .bin
file and then reverse the byte order, which is achieved most simply by piping it through the 9front command
.P1
audio/pcmconv -i u32r1c1 -o U32r1c1
.P2
.PP
The FPGA is allocated two 1 GB regions, named MAXIGP0 and MAXIGP1, in the physical memory map at
.CW 0x40000000 .
Part of this region can be imported into a user program using the
.CW axi
segment and
.I segattach (2),
e.g. as follows
.P1
ulong *reg = segattach(0, "axi", 0x40000000, 0x40000000);
.P2
(you can also use
.I seg (1)
to access it from 
.I rc (1)).
On the FPGA side you have to implement an AXI3 slave interface connected to the MAXIGP0 / MAXIGP1 ports of the PS7 macro block.
Since there is quite a lot of complexity in AXI3, I wrote a module
.CW axi3.v
that does most of the legwork and that is described below.
.PP
The interfaces just described were `slaves' interfaces, i.e. the transfer has to be performed by the CPU.
They are great for memory-mapped registers and small memories, but for large transfers this may be unacceptably slow and wastes CPU time.
Alternatively, the FPGA can take a more active role in memory transfers using the `master' interfaces.
With them the FPGA can access memory completely independent from the CPU and you can burst memory as fast as you want, subject of course to the system's total memory bandwidth (approx. 2\ GB/s).
.PP
There is a total of seven master interfaces, to wit
.CW SAXIGP[01] ,
.CW SAXIHP[0123]
and
.CW SAXIACP
(using
.I rc (1)
notation; nomenclature gets confusing because, from the CPU side, the 
.CW MAXI*
interfaces are the master interfaces and
.CW SAXI*
are the slave ones).
The general purpose (GP) interfaces are meant for low bandwidth application and can access the device registers.
The high performance (HP) interfaces are optimized for high throughput and can only access memory.
The accelerator coherence port (ACP) interface is coherent with L1 cache.
Note that the other interfaces access DRAM directly and it is the user program's responsibility to flush caches as needed.
.PP
To implement master interfaces you will have to deal with AXI3 yourself, however there is less work to be done as you can just not use the features you don't need.
See my document on the PS7 interfaces and ARM's AXI specification [AXI].
.NH
FPGA devices
.PP
As previously mentioned to access these devices from the CPU you will have to load a bitstream that provides an interface using, e.g., memory mapped registers.
At some point in the future we may provide a `canonical' bitstream that provides a standard CPU interface to all of these devices.
.IP \(bu
DisplayPort.
Connected to two high speed serial (GTP) transmitters.
It supports two lane at 1.62 Gbit/s and 2.7 Gbit/s each.
We currently have code that implements basic DisplayPort 1.1 functionality but it's still relatively unpolished, see [DP].
It is possible to remove the DMA code from this code and use it for your own designs.
.FS
The DisplayPort specifications starting with version 1.2 is a closely held secret (encrypted PDFs with hardware dongles) and will probably never be implemented unless the specification leaks.
.FE
.IP \(bu
Serial ATA.
Connected to a high speed serial (GTP) transmitter/receiver pair.
No code yet.
The connector could very well be abused for a generic high speed serial link (up to around 3 Gbit/s) to other boards.
There is a possibility that, with a small adapter board, it could be used for single lane PCI express, but this has not been tried yet.
.IP \(bu
GPIO.
There are a total of 30 general purpose input/output (GPIO) pins available on a standard 2.54 mm connector.
Only 3.3\ V standards are supported, i.e.
.CW LVCMOS33 ,
.CW LVTTL ,
.CW PCI33_3 ,
and
.CC TMDS_33 
are the only supported I/O standards
(if you don't know what I/O standard to use, you probably want
.CW LVCMOS33
).
.PP
Do not connect these pins to any voltage higher than 3.85\ V; in particular they may be damaged by 5\ V outputs (5\ V TTL, but not CMOS, inputs can be driven from 3.3\ V).
.PP
It is worth pointing out that the FPGA has an analog-to-digital converter called the XADC on some of these pins. You are referred to Xilinx UG480 for further details.
.PP
.TS
center allbox;
c s s s
r r l l.
\fBGPIO connector P4 pinout\fR
5V	1	2	GND
GND	3	4	3V3
GP0	5	6	GP1
GP2	7	8	GP3
GP4	9	10	GP5
GP6	11	12	GP7
GP8	13	14	GP9
GP10	15	16	GP11
GP12	17	18	GP13
GP14	19	20	GP15
GP16	21	22	GP17
GP18	23	24	GP19
GP20	25	26	GP21
GP22	27	28	GP23
GP24	29	30	GP25
GP26	31	32	GP27
GP28	33	34	GP29
.TE
.IP \(bu
Audio.
Two FPGA pins 
.CW LSOUND "" (
and
.CW RSOUND )
are connected, through a low-pass filter and amplifier to a headphone jack.
To produce sound you have to toggle the pins at the right rate; a delta-sigma converter will do the job very nicely.
.IP \(bu
LEDs.
There are six LEDs available as active-high signals
.CW LED[0-5] ). (
Not much else to say.
.IP \(bu
I2C.
There is an I2C bus on the board that has an accelerometer
.CW 0x1D ) (
and a GPIO expander
.CW 0x20 ) (
on it. Additionally the bus is wired to connector P2 to allow for small expansion boards.
.TS
center allbox;
c s s s
r r l l.
\fBI2C connector P2 pinout\fR
SDA	1	2	3V3
GND	3	4	SCL
INT	5	6	NC
.TE
.IP \(bu
Accelerometer.
A Freescale MMA8652FC 3-axis, 12-bit accelerometer is wired to the I2C bus at address
.CW 0x1D ). (
.IP \(bu
GPIO expander for system management.
A MCP23009 expander at address 
.CW 0x20
provides various miscelleanous signals.
Since the kernel does not like when you randomly reset its devices, you should be careful with this register.
.TS
center allbox;
r l l l.
\fBBit	Name	Dir.	Function\fR
0	ETHINT	In	Ethernet PHY interrupt
1	ETHRESET	Out	Ethernet PHY reset
2	USB0RESET	Out	USB 0 PHY reset
3	USB1RESET	Out	USB 1 PHY reset
4	ETHLED3	Out	Ethernet Jack LED
5	USB0OC	In	USB 0 Overcurrent
6	USB1OC	In	USB 1 Overcurrent
7	GPIORESET	Out	Available at P7 (see Jumper Settings)
.TE
.SH
Appendix: Script to map signal names to FPGA pins
.PP
.P1
.eo
.so aijupins11
.ec
.P2
