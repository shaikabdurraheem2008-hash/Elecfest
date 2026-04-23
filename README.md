# RC Filter Analysis and Simulation

## 1. Low-Pass RC Filter

### Transfer Function

H(s) = 1 / (1 + sRC)

### Cutoff Frequency

fc = 1 / (2πRC)

### Description

The low-pass filter allows low-frequency signals to pass while attenuating high-frequency components.
The above transform function can be got by, Zc/(Zc+R) where Zc is the Capacitive Reactance.
We know the Zc= 1/wci = 1/sc.

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
We know that Zc=1/wci = 1/sc.
If we consider R1 and R2 to be 16kilo ohms , then we will get C1 as 10nano Farad, and C2 as 1nano Farad.

---

## 3. Files

- low_pass.asc → LTspice file for low-pass filter
- band_pass.asc → LTspice file for band-pass filter
