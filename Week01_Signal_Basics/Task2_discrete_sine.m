% =========================================================
% Task 2: Discrete Sine Wave Visualization
% Course:  Biosignal Processing Lab
% =========================================================
% Description:
%   Plots a sine wave sampled at discrete intervals of pi/6
%   over one full period [0, 2*pi] using a stem plot.
%   This illustrates the concept of discrete-time signals.
% =========================================================

x = 0:pi/6:2*pi;     % Discrete sample points (every 30 degrees)
y = sin(x);          % Sine values at each sample

figure;
stem(x, y);
xlabel('x (radians)');
ylabel('Amplitude');
title('Discrete Sine Wave');
grid on;