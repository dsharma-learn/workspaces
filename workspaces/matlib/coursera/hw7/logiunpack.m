function [out] = logiunpack(cell_vec)
    n = length(cell_vec);
    out = false(n);
    for i = 1:n
        for j = 1:length(cell_vec{i})
            out(i,cell_vec{i}(j)) = true;
        end
    end
end