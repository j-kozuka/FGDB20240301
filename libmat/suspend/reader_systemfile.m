function prms = reader_systemfile(datasetPath)

jfn = 'sys_prms_qdrs.json'; % json file name
jfn = strcat(datasetPath, jfn);
prms = jsondecode(fileread(jfn))

end