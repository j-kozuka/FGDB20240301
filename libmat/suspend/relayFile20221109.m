function [status,msg] = relayFile20221109(additional, parentPath, datasetPath)

for iLoop = 1:length(additional)
    otfn = additional{iLoop}; %% transfer filename
    tfn = strcat(parentPath, otfn); %% orignial
    %tfn = strrep(tfn,'/','\')
    cpy_tfn = strcat(datasetPath, otfn); %% copy
    %cpy_tfn = strrep(cpy_tfn,'/','\')
    [status,msg] = copyfile(tfn, cpy_tfn);
end

end