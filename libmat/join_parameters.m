function ret = join_parameters(varargin)
ret = {};
numArgs = nargin; % 引数の数を取得
for k = 1:numArgs
    disp(varargin{k}); % 各引数を表示
    ret{end+1} = varargin{k};
    %ret = strcat(ret, ' ', varargin{k});
end
ret = strjoin(ret, ' ');
end