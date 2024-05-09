# DIT-DFT

This project demonstrates how to efficiently implement Discrete Fourier Transform algorithm using fundamental harmonic properties and programming techniques.

# One of the most important algorithms of our time

The Fast Fourier Transform (FFT) is an algorithm that is widely regarded as one of the most
significant technological advancements of the 20th century. It is an effective method for 
computing the Discrete Fourier Transform (DFT), which is crucial in converting signals from 
the time domain to the frequency domain.

# What is Decimation in Time (DIT) and why is used in computing DFT?

Decimation in Time (DIT) is a fundamental approach used in the computation of the Discrete Fourier Transform (DFT) through the Fast Fourier Transform (FFT) algorithm. It is one of the two main variants of the FFT algorithm, the other being the Decimation in Frequency (DIF).

Under normal circumstances, the Discrete Fourier Transform (DFT) can be calculated using a mathematical formula. <p><i>F(k) = Σ<sub>n=0</sub><sup>N-1</sup> f(n)e<sup>-i2πkn/N</sup></i></p>
This method is effective for computing the DFT for any size of data set. For example, if we consider a data set with 8 values, using the mathematical formula to compute the DFT can be done quickly and accurately. However, if the size of the data set increases to 1,000, 10,000, or 100,000 values, we must consider the efficiency of this method for calculating the DFT. The question then arises, how efficient will this method remain for larger data sets? 

# Computational Complexity 

The standard formula for the DFT (Discrete Fourier Transform) has a computational complexity of O(n^2), where n is the number of points in the dataset. This means that the time required for the computation increases exponentially with the size of the dataset. For example, if the size of the dataset doubles, the computation time increases fourfold. This means that DFT is feasible for small datasets but becomes computationally expensive for large datasets.

# Understanding the Decimation-In-Time FFT (DIT-FFT)

DIT-FFT employs a divide-and-conquer strategy that breaks down the complex problem of computing a DFT into simpler parts. This is achieved through the following steps:
  1. Decimation: The input sequence is partitioned into two smaller sequences, separating the even-indexed and odd-indexed elements. This decimation step is recursively applied to each subset until the sequences are reduced to minimal lengths.
  2. Butterfly Operations: These operations are used to efficiently compute the DFTs of the smaller sequences. They involve basic arithmetic operations—additions and subtractions—along with multiplications by twiddle factors (complex exponential coefficients).
  3. Recombination: The partial DFTs calculated in the butterfly steps are combined to produce the final DFT of the original sequence. This step aggregates the results of the preceding computations to reconstruct the full frequency spectrum.

# Data preprocessing

To apply DIT-FFT, the dataset must first be preprocessed. The number of data points in the set needs to be a power of 2. If the number of data points in the set is not a power of 2, the data can either be truncated to the next lower power of 2 or padded with zeros to the next higher power of 2. Regardless of the duration NN of the original signal, according to the Archimedean property, there exists a natural number  L  such that 2^L < N <= 2^L+1.
  - if N - 2^L < 2^L+1 - N,  then the sequence will be truncated, retaining only the first 2^L values.
  - if N - 2^L >= 2^L+1 - N, then the sequence will be padded with zeros until its length equals 2^L+1.





