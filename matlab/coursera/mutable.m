function [table summa] = mutable (n,m)
%Function: Test
%Input: n and m
%Output: table and summa
    if nargin == 0
        error('Please provide dimension(s)');    
        %return % No need to return as error already does that;
    end 
    
    if nargin < 2
        m = n;
    elseif ~isscalar(m) || m < 1 || m~=fix(m)
        error ('m need to be a positive integer');
    end 
    

    table = (1:n)' * (1:m);
    
    if nargout == 2
        summa = sum(table(:));
end 