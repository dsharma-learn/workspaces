function [out] = logipack(L)
    [row col] = size(L);
    out = cell(1,row);
    for i = 1:row
        out{i} = find(L(i,:));
        if isempty(out{i})
            out{i} = [];
        end
    end
end