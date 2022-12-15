It is mandatory to record 10 bytes in the external eeprom 93C46B to config properly the ethernet controller, so it will be correctly mapped and will be "visible" for MSX.
The first 4 bytes are internal configuration for RTL8019AS (base address mapping, leds, etc... see datasheet), and the following 6 bytes is the mac address.

You can see these values in the attached dump (obsonet_93c46b.bin, obsonet_93c46b.hex).
This example show the mac address 58:53:4D:01:02:03 only for educational purpose, you must modify the example mac addres to match a valid unique mac address wich you can buy to:
  - ieee (I think high quantities).
  - manufacturer like michochip who sells eeproms with preprogrammed macs.
  - reuse the mac address of old unused ethernet cards.

This will ensure every obsonet (and every ethernet card around the world) has its unique mac address, otherwise, 2 or more ethernet cards with the same mac address in the same local network will corrupt communications between them.

You can record the eeprom 93C46B with an external eeprom programmer wich you can find cheap at eBay or Aliexpress.

