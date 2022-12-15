# Obsonet Reloaded
This is the GitHub repository to host all source files for the Obsonet Reloaded. 

The ObsoNET is the first network card created for the MSX. In 2004, the hardware designer Daniel Berdugo and software developer Nestor Soriano joined forces to create the board that is the object of today's post. 

The cartridge is based on the Realtek RTL8019AS chip and uses a flash memory to host and execute a BIOS that allows the use of network commands from the Nextor operating system (compatible with MSXDOS). An EPROM stores basic configuration data for the RTL8019AS chip and a side connector is used to plug a network cable to your MSX. A GAL16VB is used to implement the logic required to activate and expose the cartridge to the computer.

## Hardware 

The files required to build the original version of the Obsonet are available [https://github.com/msx-solis/obsonet](here). You can download the gerber files and order from any PCB manufacturer.

I have created another version of the PCB that I called Obsonet Reloaded. The goal was to have the board fitting the standard Patola cartridge cases available in Brazil as well as the standard Konami cases available from multiple vendors WW.

![Front](images/2022-12-15_23-25.jpg)
![Front](images/2022-12-15_23-26.jpg)

## Software

On this repo you can find all software required to build and use the Obsonet Reloaded. There are also binary files with fixes for small issues we found during the project.

## License


The original work was licensed by Daniel Berdugo under the CERN OHL-S v2. So this work so, you may redistribute and modify this project and its documentation also under the terms of the CERN-OHL-S v2.

![Open Hardware](https://raw.githubusercontent.com/cristianoag/obsonet/main/images/1024px-Open-source-hardware-logo.svg.png)
