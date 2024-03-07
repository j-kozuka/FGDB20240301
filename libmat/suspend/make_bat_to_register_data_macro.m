% make_bat_to_register_data_macro
readme1 = read_readme('./')

ope1 = 'python add_data.py'
code = sprintf('%s %s %s %s\n',ope1, readme.dshash_name, readme1.func_id, stdin)
% if(strcmp(datasetTag,'NULL'))
%     %disp('match')
%     code = sprintf('%s %s %s\n',ope1,readme.dshash_name, readme1.func_id)
% else
%     %disp('miss match')
%     code = sprintf('%s %s %s %s\n',ope1, readme.dshash_name, readme1.func_id, datasetTag)
% end

%%% make bat file
py_file = '../register_data_block.bat';
fid = fopen(py_file, 'a');
fprintf(fid, code);

code = 'python make_html_of_FGDB_graph.py\n';
fprintf(fid, code);

fclose(fid);
