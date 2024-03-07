%%% make_session_macro20221109
%% dataset name

% ds_name = strcat(prms.sessiontag, getTimecode());
% prms.session_name = ds_name;
% prms.dataset_name = strcat(prms.dataset_name, '_' , ds_name);
% prms.dshash_name = mlreportgen.utils.hash(ds_name)
prms.session_name = strcat(prms.sessiontag, getTimecode());
prms.dataset_name = strcat(prms.dataset_name, '_' , prms.session_name);
prms.dshash_name = mlreportgen.utils.hash(prms.session_name)

%ssPath = strcat('../', ds_name, '/');
ssPath = strcat(ds_dir, prms.dshash_name, '/');
makeSessionSpace(ssPath);

%%% make subfolder %%%%%%%%%%%%%
prms.dir{1} = 'sample';
prms.dir{2} = 'target';
prms.dir{3} = 'model';

for iLoop = 1:length(prms.dir)
    prms.subdir{iLoop} = strcat(ssPath, prms.dir{iLoop});
    makeSessionSpace(prms.subdir{iLoop});
end