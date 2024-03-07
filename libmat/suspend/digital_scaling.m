%cRange --> bit 
% oRange : original range
% cRange : coverted range
function ret = digital_scaling(data, oRange, cRange)

% normalize
sample = (data - oRange(1)) / (oRange(2) - oRange(1));
dmaxV = 2^cRange - 1; % digital range max value
ret = round(sample .* dmaxV);  % digital converted scaling sample 

end