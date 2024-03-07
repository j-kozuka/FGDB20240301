function readme = read_readme(datasetPath)

jfn = 'readme.json'; % json file name
jfn = strcat(datasetPath, jfn);
readme = jsondecode(fileread(jfn));

end