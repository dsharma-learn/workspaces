function s = halfsum_ans_2(A)
    [r c] = size(A);
    for ii = 1:r
        for jj = 1:c
            if ii < r-jj+1
                A(ii,jj) = 0;
            end
        end
    end
    s = sum(A(:));
end