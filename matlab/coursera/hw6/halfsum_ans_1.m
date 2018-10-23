function h = halfsum_ans_1(A)
    % there is a built-in MATLAB function for almost anything...

    h = sum(sum(triu(flipud(A))))
end