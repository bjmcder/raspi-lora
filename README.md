# RFM9x Utilities
This repo contains a set of utility scripts and examples for using the Adafruit
RFM9x (LoRa) radio + OLED module with a Raspberry Pi. For convenience, the
self-test and Tx/Rx test scripts from Adafruit are included in the examples directory.

## Setup
1. With root privileges, run the adafruit_init.sh script in the scripts/ directory. This will perform
   the system packages updates and Adafruit CircuitPython dependency installation needed in later steps.
   When prompted, select <b>Y</b> to reboot.

2. After rebooting, run the rfm9x_install.sh script with root privileges to install the remaining
   CircuitPython dependencies needed by the RFM9x module.

## Test Examples
1. To perform the module self check, run the rfm9x_check.py script in the examples/ directory. This
   will initialize the module, and report on the OLED display that the RFM9x module is detected.
   Pressing any of the three buttons on the module should also display test messages.

2. To test the sending and receiving of data packets, run the radio_rfm9x.py script on two devices
   that have been pre-configured using the setup instructions above. The OLED displays on each device
   should display a "Waiting for PKT" message. Pressing any of the three buttons will transmit a message,
   and upon successful receipt, the other device should display a message indicating what button was pressed. 