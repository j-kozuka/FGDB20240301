%%% analog scale
function ret = analog_scaling_data(data, cRange)

sample = normalize_data(data);
ret = (cRange(2) - cRange(1))*sample + cRange(1); % analog converted scaling signal

end