%%% 2) making session directory
function makeSessionSpace(ssPath)

if(mkdir(ssPath))
    msg = strcat('making sample directory : ', ssPath);
    disp(msg);
else
    msg = strcat('the directory exists, already : ', ssPath);
    disp(msg);
end

end
