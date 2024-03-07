function idx = getIndex(intpu)

inDim = length(intpu);
aa = (1:inDim)-1;
bb = (2.^aa)';
idx = intpu * bb + 1;

end