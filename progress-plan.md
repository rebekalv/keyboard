# Custom Keyboard TFE4205
The goal of this course is to create a custom, matrix keyboard using two AVR64DU32 Curiosity Nanos. Each AVR should be able to communicate directly with the computer through the USB-C Human Interface Device (HID) class. The usage of a custom made PCB will simplify the wiring, creating a seamless design. In addition, I aim to include LEDs under each key and to create a fitting case for the keyboard, either through 3D printing or through laser cutting. There is the option of 3D printing or laser cutting keycaps, instead of buying them, that I will look into.

## Learning Goals
    PCB design
    Matrix Keyboard wiring
    USB-C HID communication
    Matrix Keyboard programming and timing requirements
    LED timing requirements, especially if using Neopixel
    3D print design
    Laser cutting

## Progress Plan
    1. Create button layout
    2. Plan AVR pins and connections: I2C
    3. Decide size of switches with led holes
    4. Design PCB with diodes and leds: white
    5. Solder the PCB, leds, diodes, and switches
    6. Find suitable keycaps
    7. Program the AVR with matrix keyboard
    8. Program the AVR with leds
    9. Design and laser cut a case
    10. Create documentation

## Research
### Layout keyboard
- [Easy Keyboard Layout](http://www.keyboard-layout-editor.com/#/) Decide layout here.
- [Keyboard Layout shematic](https://plate.keeb.io/) This can be imported to PCB design to know where to place your switches. Design it to match the easy layout.
### Pin configuration inspiration
- [Egil AVR64DU32](https://microchiptechnology.sharepoint.com/sites/-Social-MicrochipNWY/Shared%20Documents/Forms/AllItems.aspx?csf=1&web=1&e=ctUtPU&OR=Teams%2DHL&CT=1724403816602&clickparams=eyJBcHBOYW1lIjoiVGVhbXMtRGVza3RvcCIsIkFwcFZlcnNpb24iOiI0OS8yNDA3MTEyODgyNSIsIkhhc0ZlZGVyYXRlZFVzZXIiOmZhbHNlfQ%3D%3D&CID=77a67734%2D11af%2D48a6%2Da172%2Daa657659c86b&FolderCTID=0x0120006C706D502BA4B44C81E51DD69E7A3A13&id=%2Fsites%2F%2DSocial%2DMicrochipNWY%2FShared%20Documents%2FSocial%20Electronics%2Fkeyboards)
### Switches tactile 
- [Hænrik switches aliexpress](https://www.aliexpress.com/item/1005004226805283.html)
 - JWICK V2 T1 Black Blue Tactile Switch 5pin RGB
- Buy between 80 and 100 pieces.
### Keycaps
- [Keycaps maxgaming](https://www.maxgaming.no/no/datatilbehor/tastatur/keycaps)
- Buy norwegian caps.
- Test out 3D printing keycaps
### PCB 
- Circuit Maker. More userfriendly that Kicad, but it has limitations since it is the free version of Altium.
- Kicad, good I like it.
- [Youtube Kicad](https://www.youtube.com/watch?v=8WXpGTIbxlQ)
- Ensure that the side you will solder on is opposite of the way you plan to put the switch. Order test 10x10?
- MX 1 switch as footprint?
### Automatic key configuration (not relevant)
- QMK, future potential for AVR driver supporting this firmware configurator
- Another one exists too, but that is more expensive.
