%project.sessiontag = strcat(datasetTag, prms.converter_code, dcCode)
project.sessiontag = strcat(datasetTag, prms.converter_code);
project.sessiontag = strcat(project.sessiontag, 'B', string(samle_range_index)); % bit
project.sessiontag = strcat(project.sessiontag, 'etl', string(prms.nOetpl));
%project.sessiontag = strcat(project.sessiontag, 'DN', string(ddns*100))

%% save_dataset_macro
make_session_macro % make dataset folder

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% save parameters to json file
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
writer_readme(sdCode.parentPath, prms);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% write dataset.csv
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
writer_dataset3(sdCode.parentPath, dataset);

relayFile(prms.additional, sdCode)