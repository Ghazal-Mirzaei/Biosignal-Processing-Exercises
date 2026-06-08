% =========================================================
% Task 3: Square Wave (Pulse Train) Visualization
% Course:  Biosignal Processing Lab
% =========================================================
% Description:
%   Generates a square wave with a frequency of 2 Hz over
%   a 2-second window, sampled at 1 kHz.
%   Square waves are commonly used to model periodic
%   on/off signals in biosignal contexts.
% =========================================================

t = 0:0.001:2;                   % Time vector: 2 seconds at 1 kHz sampling rate
freq = 2;                        % Signal frequency in Hz
y = square(2 * pi * freq * t);   % Generate square wave

figure;
plot(t, y, 'b', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Square Wave at 2 Hz');
grid on;