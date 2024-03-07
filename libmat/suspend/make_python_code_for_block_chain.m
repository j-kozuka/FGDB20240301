code = cell(3,1);
code{1,1} = sprintf('python show_block_chian.py %s', readme.root);
code{2,1} = sprintf('python make_block_chain.py %s', readme.root);
code{3,1} = sprintf('python append_block_chain.py %s %s %s', readme.root, readme.parent, readme.dshash_name);

%codes = {code1;code2;code3};
%codes = {code3};
T = table(code)

% fileID = fopen('python_code.txt','w');
% for iLoop = 1:3
%     fprintf(fileID, codes{iLoop});
% end
%fclose(fileID);

%writetable(T,'python_code.txt', 'Append');
%writecell(T,'C.xls','WriteMode','append')
writetable(T,'python_code.txt');
type python_code.txt