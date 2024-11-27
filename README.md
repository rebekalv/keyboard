# 🚀 Build Your Dream Mechanical LED Keyboard with AVR! 🌟

Ever wanted to craft your own custom mechanical keyboard? Here's how I brought mine to life, step-by-step! 🛠️✨

<img src="images/full_keyboard.jpg" alt="Mechanical Keyboard" width="500"/>

---

### 🔧 **Project Highlights:**

- **Microcontroller Magic 🧠:**  
  Powered by the AVR64DU32 on a Curiosity Nano, this keyboard communicates seamlessly via USB-C using the Human Interface Device (HID) class. No soldering, no hassle—just plug and play!
  <img src="images/avrdu.png" alt="Microcontroller AVRDU" width="300"/>

- **Custom PCB in KiCad 💻:**  
  I designed a PCB to eliminate complex wiring, ensuring a sleek, professional layout. KiCad made it easy to customize my PCB, but managing library includes can be somewhat cumbersome.
    <img src="images/pcb.png" alt="pcb kicad" width="400"/>
- **Light Up the Keys! 🌈:**  
  Each key features a NeoPixel-compatible LED beneath, adding customizable lighting effects. LEDs are programmed directly alongside the keyboard firmware using MPLAB X IDE. Imagine the rainbow possibilities! 🌟

- **Case in Progress 🏗️:**  
  Next step: Designing the perfect case. Will it be 3D-printed or laser-cut? Stay tuned—this keyboard's journey isn’t over yet!

---

🎹 **DIY Tip:** If you're diving into mechanical keyboard projects, understanding matrix scanning and USB protocols will open up endless customization!

Ready to create your own masterpiece? Let's type into the future! 🚀

## Components
- Microcontroller: [AVR64DU32 curiosity nano](https://www.microchip.com/en-us/development-tool/ev59f82a)
- Switches: [JWICK V2 T1 Black Blue Tactile Switch 5pin RGB, Cherry MX](https://www.aliexpress.com/item/1005004226805283.html)
- Stabilizers for big switches: [PCB mounted Cherry MX stabilizers](https://es.aliexpress.com/item/1005004229140548.html)
- LEDs: [3.2x2.8mm sk6803 mini-E, reverse mount neopixel LEDs](https://www.aliexpress.com/item/1005003636607308.html)
- Diodes: [1N4148 DO-35 through hole diodes](https://www.aliexpress.com/item/1005006127068810.html)
- See-through Keycaps: [Polychroma V2 RGB Keycaps, Nordic ISO](https://www.maxgaming.no/no/keycaps/polychroma-v2-rgb-keycaps-131-pbt-polykarbonat-caps-nordic-iso)

## Milestones
1. 🖥️ **Layout Creation:** Sketch the perfect keyboard design.
2. 🛠️ **AVR Pin Setup:** Map out pin connections and wiring.
3. 🔌 **Component Selection:** Choose the ideal switches, diodes, and LEDs.
4. 📐 **PCB Design:** Craft your circuit board in KiCad and send it for manufacturing.
5. 🔧 **Assembly:** Solder components onto the PCB.
6. 💻 **Firmware Development:** Program the AVR for matrix scanning.
7. ⌨️ **Keycap Hunt:** Find keycaps that match your style.
8. 🌈 **LED Integration:** Synchronize lighting with the firmware. (Current step)
9. 🏗️ **Case Design:** Plan and create a custom case through 3D printing or laser cutting.
10. 📚 **Document Everything:** Share your journey and insights.


### Layout Creation
I used https://www.keyboard-layout-editor.com/ to create an initial layout for my keyboard. If you want to regenerate this design, go to the website and insert the raw json data from `keyboard_layout/raw_data.json`. 

 <img src="keyboard_layout/keyboard_picture.png" alt="keyboard layout" width="400"/>

When your design is ready, you will need the outline of the keyboard for the pcb design. Go to https://plate.keeb.io/ and paste the raw json data. Then you can download the outline as an svg file.

<img src="images/keyboard_outline.png" alt="keyboard outline" width="400"/>

### AVR Pin Setup
The important thing in this step is to map out how many pins you keyboard needs, and if your microcontroller provides that.