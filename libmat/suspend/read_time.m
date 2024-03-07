function ts = read_time(dcf)
dsT = readtable(dcf,'Delimiter',',');

ts = dsT.Variables;

end
