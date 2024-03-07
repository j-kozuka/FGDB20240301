%% make_session_macro

% tcode = getTimecode();
% sName = strcat(project.sessiontag, tcode);
% sessionDir = strcat(project.databankPath, '\', sName, '\');
% 
% %%% 1) making session directory
% sdCode = initSessionSpace(sessionDir);
% %sdCode.datasetPath = project.databankPath;
% sdCode.datasetPath = datasetPath;

%% dataset name

%readme.prms = prms;
%readme.session_name = strcat(readme.session_name, '_', readme.code, getTimecode());
readme.dataset_name = strcat(readme.dataset_name, '_', readme.code, getTimecode());
readme.dshash_name = mlreportgen.utils.hash(readme.dataset_name)
readme.parent = stdin;

ssPath = strcat(readme.db_path, readme.dshash_name, '/');
makeSessionSpace(ssPath);