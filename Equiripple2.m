function Hd = Equiripple2
%EQUIRIPPLE2 Returns a discrete-time filter object.
% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 28-Nov-2019 13:36:21

% Equiripple Lowpass filter designed using the FIRPM function.
% All frequency values are normalized to 1.

N     = 20;   % Order
Fpass = 0.3;  % Passband Frequency
Fstop = 0.4;  % Stopband Frequency
Wpass = 1;    % Passband Weight
Wstop = 1;    % Stopband Weight
dens  = 20;   % Density Factor

%There are Odd number of Coefficients
% Calculate the coefficients using the FIRPM function.
b  = firpm(N, [0 Fpass Fstop 1], [1 1 0 0], [Wpass Wstop], {dens});
Hd = dfilt.dffir(b);

fvtool(Hd);

%Done by SRI HARSHA VADATHYA(170108037) - EE320 Assignment
% [EOF]
