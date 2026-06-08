# Week 3 — ECG Signal Analysis: Rest vs Post-Exercise

This folder contains the complete lab project for ECG signal acquisition and
analysis, comparing cardiac activity at rest and immediately after a 20-minute
jogging exercise. The full processing pipeline was implemented in Python.

## Folder Structure

| Folder | Contents |
|--------|----------|
| `data/` | Raw ECG recordings (TXT format, 1 kHz) |
| `analysis/` | Jupyter notebook with full processing pipeline |
| `results/` | Summary statistics and comparison tables (CSV) |
| `figures/` | Output plots: filtering, R-peak detection, PQRST morphology |

## Processing Pipeline

1. Load raw ECG data (handles European decimal comma format)
2. Bandpass filter (0.5–40 Hz) to remove baseline drift and noise
3. 50 Hz notch filter to suppress mains interference
4. R-peak detection using a Pan–Tompkins style approach
5. RR interval and beat-to-beat heart rate computation
6. PQRST morphology visualization
7. Summary statistics and comparison tables

## Key Results

| Parameter | Rest | Post-Exercise | Δ |
|-----------|------|---------------|---|
| Mean HR (bpm) | 90.98 | 125.88 | +34.89 |
| Mean RR (ms) | 660.6 | 477.81 | −182.78 |
| SDNN (ms) | 27.6 | 23.74 | −3.86 |

## Concepts Covered

- ECG signal acquisition and digitization
- Butterworth bandpass and notch filtering
- R-peak detection and QRS enhancement
- Heart rate and RR interval analysis
- PQRST waveform morphology
- Descriptive statistics for biosignal comparison
