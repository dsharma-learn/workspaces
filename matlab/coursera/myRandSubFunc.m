function [a, s] = myRandSubFunc (low, high)
    a = low + rand (3,4) *  (high - low );
    s = sumAllElements (a);
    
    
    function summa = sumAllElements(M) 
        v = M(:);
        summa = sum (v);
    end
end
% Note, that end is not mandatory. However if one of the end is 
% provided, others have to be provided as well 

