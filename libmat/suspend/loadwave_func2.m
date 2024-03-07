function [wavedata, prms] = loadwave_func2(fpfn)

[xOt,Fs] = audioread(fpfn);
Ls = length(xOt);

wavedata.tv = (0:Ls-1)/Fs; % Time vector
wavedata.xOt = xOt; % x of t

prms.Fs = Fs; % sampling frequency
prms.Ls = Ls; % Length of signal
prms.Sp = 1/prms.Fs;    % Sampling period 
prms.fpfn = fpfn;

wavedata.prms = prms;

end
