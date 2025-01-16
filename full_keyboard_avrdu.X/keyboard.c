/*
 * File:   keyboard.c
 * Author: M70309
 *
 * Created on 26. november 2024, 15:53
 */

#include "keyboard.h"

// Key map layer 1
const uint8_t keyboard[] = {
    HID_ESCAPE, HID_1, HID_2, HID_3, HID_4, HID_5, HID_6, HID_7, HID_8, HID_9, HID_0, QUESTION, BACKSLASH, HID_BACKSPACE, HID_DELETE,
    HID_TAB, HID_Q, HID_W, HID_E, HID_R, HID_T, HID_Y, HID_U, HID_I, HID_O, HID_P, AA, TWO_DOTS, HID_RETURN, HID_HOME,
    HID_CAPS_LOCK, HID_A, HID_S, HID_D, HID_F, HID_G, HID_H, HID_J, HID_K, HID_L, OE, AE, APOSTROF, NONE, HID_END,
    SHIFT_L, CROCODILE_SIGN, HID_Z, HID_X, HID_C, HID_V, HID_B, HID_N, HID_M, HID_COMMA, HID_DOT, HID_SLASH, SHIFT_R, HID_UP, CHANGE_LEDS,
    CTRL, WINDOWS, ALT, NONE, NONE, NONE, HID_SPACEBAR, NONE, NONE, ALTGR, LEDS_DOWN, LEDS_UP, HID_LEFT, HID_DOWN, HID_RIGHT,
};

// Modifier index list
const uint8_t modifierIndexes[] = {45, 57, 60, 61, 62, 69};
const uint8_t numberOfModifiers = sizeof(modifierIndexes) / sizeof(modifierIndexes[0]);

// Keymap layer 2
const uint8_t layer2[] = {
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, BACKSLASH, STRAIGHT_LINE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
};

// Layer 2 index list
const uint8_t customIndexes[] = {11,12};
const uint8_t numberOfCustomIndexes = sizeof(customIndexes) / sizeof(customIndexes[0]);

bool IsModifierIndex(uint8_t index) {
    for (uint8_t i = 0; i < numberOfModifiers; i++) {
        if (index == modifierIndexes[i]) {
            return true;
        }
    }
    return false;
}
bool IsCustomIndex(uint8_t index) {
    for (uint8_t i = 0; i < numberOfCustomIndexes; i++) {
        if (index == customIndexes[i]) {
            return true;
        }
    }
    return false;
}

