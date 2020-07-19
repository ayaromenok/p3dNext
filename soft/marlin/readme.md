### Info

### Settings:

#ifndef MOTHERBOARD
  #define MOTHERBOARD BOARD_RUMBA
#endif


#define PSU_CONTROL
#define PSU_NAME "Power Supply"

#if ENABLED(PSU_CONTROL)
  #define PSU_ACTIVE_HIGH false     // Set 'false' for ATX, 'true' for X-Box

  #define PSU_DEFAULT_OFF         // Keep power off until enabled directly with M80
  #define PSU_POWERUP_DELAY 100   // (ms) Delay for the PSU to warm up to full power

  #define AUTO_POWER_CONTROL      // Enable automatic control of the PS_ON pin
  #if ENABLED(AUTO_POWER_CONTROL)
    #define AUTO_POWER_FANS         // Turn on PSU if fans need power
    #define AUTO_POWER_E_FANS
    #define AUTO_POWER_CONTROLLERFAN
    #define AUTO_POWER_CHAMBER_FAN
    //#define AUTO_POWER_E_TEMP        50 // (°C) Turn on PSU over this temperature
    //#define AUTO_POWER_CHAMBER_TEMP  30 // (°C) Turn on PSU over this temperature
    #define POWER_TIMEOUT 30
  #endif
#endif

#define MACHINE_UUID "00000000-0000-0000-0000-000000000000"


#define EXTRUDERS 1


#define DEFAULT_NOMINAL_FILAMENT_DIA 1.75


#define TEMP_SENSOR_0 1
#define TEMP_SENSOR_1 0
#define TEMP_SENSOR_2 0
#define TEMP_SENSOR_BED 1

//endstops
#define USE_XMIN_PLUG
#define USE_YMIN_PLUG
#define USE_ZMIN_PLUG
#define USE_XMAX_PLUG
#define USE_YMAX_PLUG
//#define USE_ZMAX_PLUG

#define X_MIN_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
#define Y_MIN_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
#define Z_MIN_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
#define X_MAX_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
#define Y_MAX_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.
#define Z_MAX_ENDSTOP_INVERTING false // Set to true to invert the logic of the endstop.

//drivers
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

//display
looks like  it's a ZONESTAR_LCD, but not 100%