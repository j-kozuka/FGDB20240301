function code = getTimecode()
opTime = now;
sDate = datestr(opTime, 'yyyymmdd');
sTime = datestr(opTime, 'HHMMSS');
%dateStr = datestr(opTime, 'yyyy/mm/dd HH:MM:SS');

code = strcat('D', sDate, 'T', sTime);
end