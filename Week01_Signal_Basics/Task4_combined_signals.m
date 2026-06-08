% =========================================================
% Task 4: Combined Signal Visualization (Subplots)
% Course:  Biosignal Processing Lab
% =========================================================
% Description:
%   Displays three fundamental signal types and their
%   superposition in a single figure using subplots.
%   Demonstrates continuous sine, discrete sine, and square
%   wave signals, then combines them into one composite signal.
% =========================================================

% --- Signal 1: Continuous sine wave ---
x1 = 0:0.1:10;
y1 = sin(x1);

% --- Signal 2: Discrete sine wave ---
x2 = 0:pi/6:2*pi;
y2 = sin(x2);

% --- Signal 3: Square wave ---
x3 = 0:0.1:10;
y3 = square(2 * pi * 0.3 * x3);   % 0.3 Hz square wave

% --- Signal 4: Superposition of all three ---
% Resample signals 2 and 3 onto the same time axis as signal 1
y2_resampled = interp1(x2, y2, x1, 'linear', 0);
composite = y1 + y2_resampled + y3;

figure;

subplot(4, 1, 1);
plot(x1, y1, 'r', 'LineWidth', 1);
xlabel('Time (s)');
ylabel('Amplitude');
title('Continuous Sine Wave');
grid on;

subplot(4, 1, 2);
stem(x2, y2, 'g', 'filled');
xlabel('x (radians)');
ylabel('Amplitude');
title('Discrete Sine Wave');
grid on;

subplot(4, 1, 3);
plot(x3, y3, 'b', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Square Wave at 0.3 Hz');
grid on;

subplot(4, 1, 4);
plot(x1, composite, 'k', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Composite Signal (Superposition of All Three)');
grid on;