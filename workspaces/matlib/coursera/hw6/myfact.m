function out = myfact (n) 
    if n == 0 || n ==1 
        out = 1;
    elseif n < 0 
        out = 0;
    else 
        out = n * myfact (n-1);
    end
end 