function [table, tDim] = makeBinaryTable(iOb)

nOc = 2^iOb; % number of cases
tDim = [iOb, nOc];
% table = zeros(dim);
table = [];
for iLoop = 1:iOb
    dim = 2^(iLoop-1);
    z = zeros([1, dim]);
    o = ones([1, dim]);
    c = [z, o];
    rn = nOc / (dim*2); % repeat number
    cc = repmat(c, [1, rn]);
    table = [table; cc];
end

end