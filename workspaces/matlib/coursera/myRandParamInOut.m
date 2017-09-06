% Note that in the following function, a in function definition line is same as line where 
% a value is being assinged to a. If it isnt assigned a value, an error is thrown.
function [a, sum_vec] = myRandParamInOut (low,high)
    a = low + rand(3,4)*(high-low);
    v = a(:);
    sum_vec = sum(v);
end   

 
