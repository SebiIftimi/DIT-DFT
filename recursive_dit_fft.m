function X = recursive_dit_fft(x)
    N = length(x);                                              % The length of the input signal (x)
    if N == 1                                                   % If the signal can no longer be divided 
        X = x;                                                  % into even and odd elements, we return the transform
        return;
    end
    
    if log2(N) == floor(log2(N)) && isequal(x, bitrevorder(x))  % Apply bit-reversal at the first function call to order 
        x = x(bitrevorder(1:N));                                % the input signal into even and odd elements
    end
     
    X_even = recursive_dit_fft(x(1:2:end));                     % Apply the function recursively to the even and odd samples
    X_odd = recursive_dit_fft(x(2:2:end));

    twiddle_factors = exp(-2i * pi * (0:N/2-1) / N);            % Calculate the twiddle factors
    X = zeros(1, N);                                            % Initialize the vector in which the elements will be stored
    
    for k = 1:N/2
        factor = twiddle_factors(k);                            % Apply the butterfly algorithm operations
        X(k) = X_even(k) + factor * X_odd(k);                   % Simultaneously construct the elements at positions k,
        X(k + N/2) = X_even(k) - factor * X_odd(k);             % and also k + N/2
    end
end
