function ret = normalize_data(data)

maxVal = max(max(data));
minVal = min(min(data));
dRange = maxVal - minVal;

ret = (data - minVal) / dRange; %  --> [0,1]

end