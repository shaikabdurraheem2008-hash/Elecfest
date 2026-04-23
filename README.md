# RC Filter Analysis and Simulation

## 1. Low-Pass RC Filter

### Transfer Function

H(s) = 1 / (1 + sRC)

### Cutoff Frequency

fc = 1 / (2πRC)

### Description

The low-pass filter allows low-frequency signals to pass while attenuating high-frequency components.
The above transform function can be got by, Zc/(Zc+R) where Zc is the Capacitive Reactance.

---

## 2. Band-Pass Filter Design

### Specifications

- Lower cutoff frequency: 1 kHz
- Upper cutoff frequency: 10 kHz

### Transfer Function

H(s) = (sR1C1 / (1 + sR1C1)) × (1 / (1 + sR2C2))

### Description

The band-pass filter is constructed by cascading a high-pass filter and a low-pass filter.
Here also,We can get the transform funtion by multiplying transform functions of lowpass and highpass
Highpass transform funtion can be got by R/(R+Zc) where Zc is the Capacitive reactance.

---

## 3. Files

- low_pass.asc → LTspice file for low-pass filter
- band_pass.asc → LTspice file for band-pass filter
