/*
 * File:   hardware.c
 * Author: M70309
 *
 * Created on 26. november 2024, 15:45
 */

#include "mcc_generated_files/system/pins.h"
#include "hardware.h"

void TurnRowOff(uint8_t row){
    switch (row) {
        case 0: ROW0_SetHigh(); break;
        case 1: ROW1_SetHigh(); break;
        case 2: ROW2_SetHigh(); break;
        case 3: ROW3_SetHigh(); break;
        case 4: ROW4_SetHigh(); break;
        default: COL0_SetHigh(); break;
    }
}
void TurnRowOn(uint8_t row) {
    switch (row) {
        case 0: ROW0_SetLow(); break;
        case 1: ROW1_SetLow(); break;
        case 2: ROW2_SetLow(); break;
        case 3: ROW3_SetLow(); break;
        case 4: ROW4_SetLow(); break;
        default: ROW0_SetLow(); break;
    }
}
uint8_t ColumnIsActive(uint8_t column){
    switch (column) {
        case 0:  return !COL0_GetValue(); break;
        case 1:  return !COL1_GetValue(); break;
        case 2:  return !COL2_GetValue(); break;
        case 3:  return !COL3_GetValue(); break;
        case 4:  return !COL4_GetValue(); break;
        case 5:  return !COL5_GetValue(); break;
        case 6:  return !COL6_GetValue(); break;
        case 7:  return !COL7_GetValue(); break;
        case 8:  return !COL8_GetValue(); break;
        case 9:  return !COL9_GetValue(); break;
        case 10: return !COL10_GetValue(); break;
        case 11: return !COL11_GetValue(); break;
        case 12: return !COL12_GetValue(); break;
        case 13: return !COL13_GetValue(); break;
        case 14: return !COL14_GetValue(); break;
        default: return !COL0_GetValue(); break;
    }
}
