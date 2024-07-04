function htrunc = TruncIdlLPF(N, hatfm)


% N = FIR Filter Order
% hatfm - nominal pass band edge frequency in cycles per sample
%Output - vector of N+A low pass filter response values

if N/2 ~= floor(N/2)
    N = N + 1;
end

L = N/2;
k = 0:N;
htrunc = sin(2*pi*hatfm*(k-(L)))./(pi*(k-L));
htrunc(1+N/2) = 2*hatfm;


% N = 26, hatfm = 0.25
% N = 45, hatfm = 0.4