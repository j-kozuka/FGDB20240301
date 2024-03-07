function sdCode = initSessionSpace(ssPath)

makeSessionSpace(ssPath);

smpDir = strcat(ssPath, 'sample\');
makeSessionSpace(smpDir);

trgDir = strcat(ssPath, 'target\');
makeSessionSpace(trgDir);

mdlDir = strcat(ssPath, 'model\');
makeSessionSpace(mdlDir);

%% return sub directory code
sdCode.parentPath = ssPath;
% sdCode.smpDir = smpDir;
% sdCode.trgDir = trgDir;
% sdCode.mdlDir = mdlDir;
sdCode.samplePath = smpDir;
sdCode.targetPath = trgDir;
sdCode.modelPath = mdlDir;

end
