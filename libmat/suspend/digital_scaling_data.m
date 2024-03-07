%cRange --> bit 
function ret = digital_scaling_data(data, cRange)

sample = normalize_data(data);
dmaxV = 2^cRange - 1; % digital range max value
ret = round(sample .* dmaxV);  % digital converted scaling sample 

end