function p = poly_val_ans(c0,c,x)
    c = c(:);           % make sure c and x are column vectors
    x = x(:);
    if isempty(c)
        p = c0;
    else
        p = c0 + sum(c' .* x .^ (1:length(c)));
    end
end