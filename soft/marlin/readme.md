### Info

### Settings:

#ifndef MOTHERBOARD
  #define MOTHERBOARD BOARD_RUMBA
#endif


define MACHINE_UUID "00000000-0000-0000-0000-000000000000"


#define EXTRUDERS 1


#define DEFAULT_NOMINAL_FILAMENT_DIA 1.75


#define TEMP_SENSOR_0 1
#define TEMP_SENSOR_1 0
#define TEMP_SENSOR_2 0
#define TEMP_SENSOR_BED 1


#define X_DRIVER_TYPE  DRV8825
#define Y_DRIVER_TYPE  DRV8825
#define Z_DRIVER_TYPE  DRV8825
...
#define E0_DRIVER_TYPE DRV8825
#define E1_DRIVER_TYPE DRV8825
#define E2_DRIVER_TYPE DRV8825


#define DEFAULT_AXIS_STEPS_PER_UNIT   {166, 166, 787, 990 }
### links:
 - config with https://www.my-home-fab.de/en/documentations/reprap-firmware/installing-marlin-firmware-on-rumba-board
 - G-codes https://marlinfw.org/docs/gcode/M302.html 
 - how to flash marlin https://reprap.org/wiki/Marlin
 - rumba board config https://reprap.org/wiki/RUMBA#Marlin_Firmware_Configuration
 - marlin firmware releases https://github.com/MarlinFirmware/Marlin/releases
 - config examples https://github.com/MarlinFirmware/Configurations
