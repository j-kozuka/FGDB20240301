function prms = reader_readme(datasetPath)

jfn = 'readme.json'; % json file name
jfn = strcat(datasetPath, jfn);
prms = jsondecode(fileread(jfn));

end