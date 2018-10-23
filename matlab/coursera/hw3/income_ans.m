function s = income_ans(rate,price)
    s = 6 * 2 * 8 * rate * price';
    % Alternate: 
    % s = 6 * 2 * 8 * sum(rate .* price);
end