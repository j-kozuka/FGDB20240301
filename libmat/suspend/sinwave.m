function ret = sinwave(ts, prms)

A1 = prms.amplitude_A;
f1 = prms.frequency_f;
theta1 = prms.theta;
B1 = prms.bias_B;

phase = 2*pi*f1*ts + theta1;
ret = A1 * sin(phase) + B1;

end