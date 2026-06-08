# Week 2 — Pulse Rate Measurement Using Arduino

This folder contains the lab work for pulse rate signal acquisition using a hardware
setup based on an Arduino Uno and a pulse sensor. The experiment covers the full
data acquisition pipeline: from analog sensor output, through ADC conversion, to
serial data transfer and recording in MATLAB.

## Files

| File | Description |
|------|-------------|
| `pulse_sensor_arduino.ino` | Arduino sketch that reads analog pulse sensor data and transmits it over serial at 9600 baud |
| `pulse_recording.m` | MATLAB script that receives serial data from the Arduino and saves it to a text file for analysis |

## Experiment Overview

A pulse sensor was connected to the analog input pin A0 of an Arduino Uno. The
Arduino reads the sensor output as a 10-bit ADC value (0–1023) and continuously
sends the readings over a serial connection at 9600 baud. MATLAB establishes the
serial connection and records 120 seconds of data into a text file.

## Concepts Covered

- Analog-to-Digital Conversion (ADC) and resolution (10-bit: 1024 levels)
- Serial communication between Arduino and MATLAB
- Real-time biosignal data acquisition
- Nyquist sampling and the importance of sampling rate selection

## Hardware Setup

- Arduino Uno
- Pulse sensor (Signal → A0, VCC → 5V, GND → GND)
- USB connection to PC running MATLAB

## Notes

To replicate this experiment:
1. Upload `pulse_sensor_arduino.ino` to the Arduino using the Arduino IDE
2. Connect the Arduino via USB and identify the correct COM port
3. Update the COM port in `pulse_recording.m` if needed (default: COM8)
4. Run `pulse_recording.m` in MATLAB to begin recording
