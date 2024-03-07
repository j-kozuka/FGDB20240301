%%% make_session_macro20221109
%% dataset name

readme.prms = prms;
readme.session_name = strcat(readme.session_name, '_', operation_code, getTimecode());
readme.dataset_name = strcat(readme.dataset_name, '_', readme.code, getTimecode());
readme.dshash_name = mlreportgen.utils.hash(readme.session_name)
readme.parent = datasetTag;

ssPath = strcat(readme.db_path, readme.dshash_name, '/');
makeSessionSpace(ssPath);

%%% make subfolder %%%%%%%%%%%%%
readme.dir{1} = 'sample';
readme.dir{2} = 'target';
%readme.dir{3} = 'model';

readme.path{1} = ssPath
for iLoop = 1:length(readme.dir)
    readme.subdir{iLoop} = strcat(ssPath, readme.dir{iLoop});
    readme.path{iLoop+1} = readme.subdir{iLoop} 
    makeSessionSpace(readme.subdir{iLoop});
end
