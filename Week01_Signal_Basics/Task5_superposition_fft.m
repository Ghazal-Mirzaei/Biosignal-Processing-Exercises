% =========================================================
% Task 5: Signal Superposition and Fourier Transform
% Course:  Biosignal Processing Lab
% =========================================================
% Description:
%   Constructs three sinusoidal signals at different
%   frequencies (20, 30, 50 Hz) and amplitudes, then
%   superposes them into a composite signal.
%   The FFT is applied to identify the frequency components,
%   which is a fundamental step in EEG/biosignal analysis.
% =========================================================

% --- Signal parameters ---
A1 = 2;  f1 = 20;   % Amplitude and frequency of signal 1
A2 = 4;  f2 = 30;   % Amplitude and frequency of signal 2
A3 = 1;  f3 = 50;   % Amplitude and frequency of signal 3

Fs = 200;            % Sampling frequency (must be >= 2 * f_max by Nyquist)
T  = 1;              % Duration in seconds
t  = 0:1/Fs:T-1/Fs; % Time vector (200 samples for 1 second)

% --- Generate individual signals ---
signal1 = A1 * sin(2 * pi * f1 * t);
signal2 = A2 * sin(2 * pi * f2 * t);
signal3 = A3 * sin(2 * pi * f3 * t);

% --- Superpose signals ---
composite_signal = signal1 + signal2 + signal3;

% --- Plot individual signals and composite ---
figure;

subplot(4, 1, 1);
plot(t, signal1);
title('Signal 1: 20 Hz, Amplitude = 2');
xlabel('Time (s)'); ylabel('Amplitude');

subplot(4, 1, 2);
plot(t, signal2);
title('Signal 2: 30 Hz, Amplitude = 4');
xlabel('Time (s)'); ylabel('Amplitude');

subplot(4, 1, 3);
plot(t, signal3);
title('Signal 3: 50 Hz, Amplitude = 1');
xlabel('Time (s)'); ylabel('Amplitude');

subplot(4, 1, 4);
plot(t, composite_signal);
title('Composite Signal (Superposition)');
xlabel('Time (s)'); ylabel('Amplitude');

% --- Fourier Transform ---
N = length(t);                   % Number of samples
Y = abs(fft(composite_signal));  % Magnitude spectrum
f = (0:N-1) * (Fs / N);          % Frequency axis in Hz

figure;
plot(f, Y);
title('Frequency Spectrum (FFT) of Composite Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0 Fs/2]);                  % Show only up to Nyquist frequency
grid on;