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
.NH
Quick start guide
.PP
.nr i 0 1
.IP \n+i.
Verify that both the TX and RX jumpers on P3 are in place.
Verify that the boot jumper on P1 is set to `ROM' and not `JTAG'.
.IP \n+i.
Insert an SD card with a bootable image; alternatively, connect Ethernet and set up another Plan 9 computer to DHCP boot (the default MAC address is
.CW 0ea7deadbeef ).
.IP \n+i.
Connect the USB-B connector to a host.
Linux and 9front should work out of the box, you may need to install FT2232H drivers on Windows.
.IP \n+i.
Connect the board to the power supply.
The `power' LED should turn on.
.IP \n+i.
Open a terminal program on the host.
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
