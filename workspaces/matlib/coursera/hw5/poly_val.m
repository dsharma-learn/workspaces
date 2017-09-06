function p = poly_val (c0,c,x)

    length_c = size(c);
    if length_c (1) > 1
        c = c';
    end 
    
    if isempty(c) 
        p = c0;
    else if isscalar(c)
        p = c0 + c*x;
    else 
        p= c0 + c * (x .^ [1:length(c)])';
    end 
end  