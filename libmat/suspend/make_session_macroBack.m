%% make_session_macro

tcode = getTimecode();
sName = strcat(project.sessiontag, tcode);
sessionDir = strcat(project.databankPath, '\', sName, '\');

%%% 1) making session directory
sdCode = initSessionSpace(sessionDir);
%sdCode.datasetPath = project.databankPath;
sdCode.datasetPath = datasetPath;