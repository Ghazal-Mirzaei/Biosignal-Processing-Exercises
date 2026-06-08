# Week 1 — Signal Basics and Visualization

This folder contains the first week's lab exercises, focused on generating and visualizing fundamental signal types in MATLAB. The tasks introduce the building blocks of signal processing: continuous and discrete representations, periodic waveforms, and frequency analysis.

## Tasks

| File | Description |
|------|-------------|
| `Task1_continuous_sine.m` | Plots a continuous sine wave over a defined time interval |
| `Task2_discrete_sine.m` | Visualizes a sine wave sampled at discrete points using a stem plot |
| `Task3_square_wave.m` | Generates and plots a periodic square wave (pulse train) |
| `Task4_combined_signals.m` | Displays all three signal types together using subplots |
| `Task5_superposition_fft.m` | Superposes three sinusoidal signals and analyzes their frequency content using the Fast Fourier Transform (FFT) |

## Concepts Covered

- Continuous vs. discrete signal representation
- Periodic waveforms: sine and square waves
- Signal superposition
- Frequency domain analysis using the FFT
- Nyquist sampling theorem (applied in Task 5)

## Notes

Task 5 is the most relevant to biosignal analysis — decomposing a composite signal into its frequency components is the same principle used in EEG band analysis (Delta, Theta, Alpha, Beta).
