[x, Fs] = audioread('instr_02.wav');   % Load data
                                       % x - data, fs - samples rate
x = x'; 
N_b = length(x);                       % N_b - signal length
P = nextpow2(N_b);                     % Calculates the next power of 2 for N_b
                                       % P - the next power of 2 for N_b
if N_b-2^(P-1) < 2^P - N_b             % We verify Archimedes' axiom and decide whether to eliminate
    x = x(1:end-(N_b-2^(P-1)));        % values from the initial array or to fill it with zeros
else
    x = [x zeros(1, 2^P - N_b)];
end

N_b = length(x);                       % Update N (meaning the signal length should be a power of 2)
X = recursive_dit_fft(x);              % Apply the algorithm for computing the Fourier transform with time decimation.

%% 

X_b = abs(X/N_b);                      % Normalize the obtained discrete signal
X_b = X_b(1:N_b/2+1); 
X_b(2:end-1) = 2*X_b(2:end-1); 
X_db = 20 * log10(X_b + eps);          % Convert the signal into decibels
f_ax = Fs*(0:(N_b/2))/N_b;             % Frequency axis

[y, fs] = audioread('instr_02.wav');   % Calculate the Fourier Transform using the fft function
y = y';                                % in MATLAB and perform the same operations as above.
N = length(x);

Y = fft(y);
Y = abs(Y/length(y));
Y = Y(1:N/2+1);
Y(2:end-1) = 2*Y(2:end-1);

Y_db = 20 * log10(Y + eps);            
f = fs*(0:(N/2))/N;

%% Plot spectrum for dit-fft and fft function
figure;                               
subplot(2,1,1);
plot(f_ax, X_db)
xlabel('Frecuency (Hz)')
ylabel('Magnitudine (dB')
title('Signal spectrum - DIT-FFT')
grid on
subplot(2,1,2);                            
plot(f, Y_db)
xlabel('Frecuency (Hz)')
ylabel('Magnitudine (dB)')
title('Signal spectrum - "fft" function ');
grid on

