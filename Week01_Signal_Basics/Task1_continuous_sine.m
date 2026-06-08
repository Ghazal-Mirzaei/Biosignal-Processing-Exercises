% =========================================================
% Task 1: Continuous Sine Wave Visualization
% Course:  Biosignal Processing Lab
% =========================================================
% Description:
%   Generates and plots a continuous sine wave over the
%   interval [0, 10] using a small step size (0.1).
%   This represents a continuous-time signal approximation.
% =========================================================

x = 0:0.1:10;        % Time vector from 0 to 10 seconds
y = sin(x);          % Compute sine values at each time point

figure;
plot(x, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Continuous Sine Wave');
grid on;