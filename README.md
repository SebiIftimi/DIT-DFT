# DIT-DFT

This project demonstrates how to efficiently implement Discrete Fourier Transform algorithm using fundamental harmonic properties and programming techniques.

# One of the most important algorithms of our time

The Fast Fourier Transform (FFT) is an algorithm that is widely regarded as one of the most
significant technological advancements of the 20th century. It is an effective method for 
computing the Discrete Fourier Transform (DFT), which is crucial in converting signals from 
the time domain to the frequency domain.

The Fast Fourier Transform (FFT) has a wide range of applications in various fields, including 
data transmission, audio and video signal processing, and medical imaging. It is also essential 
in solving differential equations, spectral analysis, and simulating and optimizing dynamic systems.

# What is Decimation in Time (DIT) and why is used in computing DFT?

Decimation in Time (DIT) is a fundamental approach used in the computation of the Discrete Fourier Transform (DFT) through the Fast Fourier Transform (FFT) algorithm. It is one of the two main variants of the FFT algorithm, the other being the Decimation in Frequency (DIF).

Under normal circumstances, the Discrete Fourier Transform (DFT) can be calculated using the mathematical formula. This method works correctly for any size of the data set. For instance, consider a data set with 8 values. Using the mathematical formula to compute the DFT will be accomplished quickly. However, what happens when the size of the data set increases to 1,000, 10,000, or 100,000 values? We must then ask ourselves, how efficient will this method remain for calculating the DFT?

