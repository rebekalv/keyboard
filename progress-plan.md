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
    2. Plan AVR pins and connections: I2C?
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
- Pins to connect usb: vusb, dm, dp, gnd (6, 7, 8, 19)
- Pins to program the avr: gnd, vdd, updi=PF7, reset=PF6 (29, 28, 27, 26)
- Pin to control LEDS: PA0 (30)
- Pin to check voltage/connection: AINP4 = PC3 (9)
- Extra non-programmable pins: vdd (18)
- Programmable pins: 32 - 4 - 4 - 1 - 1 - 1 = 21 (need 20 total for rows + columns)
### Switches tactile 
- [Hænrik switches aliexpress](https://www.aliexpress.com/item/1005004226805283.html)
- JWICK V2 T1 Black Blue Tactile Switch 5pin RGB
- Buy between 80 and 100 pieces.
- Hole for leds are 10mm x 3mm 
### Keycaps
- [Keycaps maxgaming](https://www.maxgaming.no/no/datatilbehor/tastatur/keycaps)
- Buy norwegian caps.
- Test out 3D printing keycaps
### LEDs and diodes
- 1N4148 Diodes [Aliexpress DO-35 through hole diodes](https://www.aliexpress.com/item/1005006127068810.html?src=google&src=google&albch=shopping&acnt=298-731-3000&isdl=y&slnk=&plac=&mtctp=&albbt=Google_7_shopping&aff_platform=google&aff_short_key=UneMJZVf&gclsrc=aw.ds&&albagn=888888&&ds_e_adid=&ds_e_matchtype=&ds_e_device=c&ds_e_network=x&ds_e_product_group_id=&ds_e_product_id=en1005006127068810&ds_e_product_merchant_id=5079333862&ds_e_product_country=NO&ds_e_product_language=en&ds_e_product_channel=online&ds_e_product_store_id=&ds_url_v=2&albcp=21627925185&albag=&isSmbAutoCall=false&needSmbHouyi=false&gad_source=1&gclid=CjwKCAjwufq2BhAmEiwAnZqw8nkbaMfd7AloUoBlv19p4ttK0wIiTSHc_lokBm17WVJBATCqOCbm7xoCelAQAvD_BwE)
- [2.0x1.8mm LEDS ws2812b 2020 neopixel](https://www.mouser.com/pdfDocs/WS2812B-2020_V10_EN_181106150240761.pdf?srsltid=AfmBOopnvua7IN4AHTCpkS61hUiL5iW8BxMWp4Ri_CYmmXfggcWa-cxF)
- [Leds soldered on the front](https://www.eevblog.com/forum/manufacture/advice-for-design-of-keyboard-pcb/)
- [3.2x2.8mm LEDS sk6803 mini-E. Soldered on the back, need hole](https://www.aliexpress.com/item/1005003636607308.html?spm=a2g0o.detail.pcDetailTopMoreOtherSeller.5.1c20oyikoyikvx&gps-id=pcDetailTopMoreOtherSeller&scm=1007.40050.354490.0&scm_id=1007.40050.354490.0&scm-url=1007.40050.354490.0&pvid=26edec55-466f-4dbb-9192-bd1cba5853b7&_t=gps-id:pcDetailTopMoreOtherSeller,scm-url:1007.40050.354490.0,pvid:26edec55-466f-4dbb-9192-bd1cba5853b7,tpp_buckets:668%232846%238116%232002&pdp_npi=4%40dis%21EUR%2111.63%210.91%21%21%2112.64%210.98%21%40210384db17265815929271181e528b%2112000026925008542%21rec%21NO%21%21ABX&utparam-url=scene%3ApcDetailTopMoreOtherSeller%7Cquery_from%3A#nav-specification)
- JLC pcb? To produce my pcb.

### PCB 
- Circuit Maker. More userfriendly that Kicad, but it has limitations since it is the free version of Altium.
- Kicad, good I like it.
- [Youtube Kicad](https://www.youtube.com/watch?v=8WXpGTIbxlQ)
- Ensure that the side you will solder on is opposite of the way you plan to put the switch. Order test 10x10?
- MX 1 switch as footprint?
### Automatic key configuration (not relevant)
- QMK, future potential for AVR driver supporting this firmware configurator
- Another one exists too, but that is more expensive.

### Questions
- Which leds should i use? Placement?
- bluetooth?
- usb-c connector?

### AVR
- [Footprint for avr64du32](https://app.ultralibrarian.com/details/a1da6b9f-fbed-11ee-80cc-0210d3b76207/Microchip/AVR64DU32-I-PT)

