function found = small_elements(A)
    [row col] = size(A);
    found = [];
    for jj = 1:col
        for ii = 1:row
            if A(ii,jj) < ii * jj
                found = [found; ii jj];
            end
        end
    end
end