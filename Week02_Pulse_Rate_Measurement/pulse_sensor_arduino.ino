// =========================================================
// Pulse Sensor Data Acquisition via Arduino
// Course:  Biosignal Processing Lab
// =========================================================
// Description:
//   Reads analog output from a pulse sensor connected to
//   pin A0 and transmits the raw ADC values over serial
//   communication at 9600 baud.
//   The data is received and recorded by MATLAB for further
//   biosignal analysis.
//
// Hardware:
//   - Arduino Uno
//   - Pulse sensor: VCC → 5V, GND → GND, Signal → A0
//
// Usage:
//   Upload to Arduino, then run pulse_recording.m in MATLAB
//   to record the incoming data.
// =========================================================

const int pulsePin = A0;   // Analog pin connected to pulse sensor
int signal;                // Variable to store ADC reading
int threshold = 550;       // Threshold to detect a heartbeat peak

void setup() {
    pinMode(pulsePin, OUTPUT);    // Set pulse pin as output
    Serial.begin(9600);           // Initialize serial communication at 9600 baud
}

void loop() {
    signal = analogRead(pulsePin);   // Read raw analog value from pulse sensor
    Serial.println(signal);          // Send value over serial to MATLAB
}