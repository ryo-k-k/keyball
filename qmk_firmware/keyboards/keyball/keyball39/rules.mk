# MCU name
MCU = atmega32u4

# Bootloader selection
BOOTLOADER = caterina

# Link Time Optimization required for size.
VIA_ENABLE = yes
LTO_ENABLE = yes

# Build Options
BOOTMAGIC_ENABLE = no
EXTRAKEY_ENABLE = no
CONSOLE_ENABLE = no
COMMAND_ENABLE = no
NKRO_ENABLE = no
BACKLIGHT_ENABLE = no
AUDIO_ENABLE = no

# Keyball39 is split keyboard.
SPLIT_KEYBOARD = yes

# Optical sensor driver for trackball.
POINTING_DEVICE_ENABLE = yes
POINTING_DEVICE_DRIVER = custom
SRC += drivers/pmw3360/pmw3360.c
QUANTUM_LIB_SRC += spi_master.c

MOUSEKEY_ENABLE = no

RGBLIGHT_ENABLE = no
RGB_MATRIX_ENABLE = no
RGB_MATRIX_DRIVER = ws2812

SLEEP_LED_ENABLE = no

# OLED
OLED_ENABLE = no
SRC += lib/oledkit/oledkit.c

# Keyball library
SRC += lib/keyball/keyball.c

# Feature trimming
SPACE_CADET_ENABLE = no
GRAVE_ESC_ENABLE = no
MAGIC_ENABLE = no

# C99 support
CFLAGS += -std=gnu99
