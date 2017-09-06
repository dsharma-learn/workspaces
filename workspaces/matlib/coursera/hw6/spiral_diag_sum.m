function out = spiral_diag_sum (n)
    out = 0;
    
    if nargin ~= 1 
        error ('Invalid Number of Argumets');
    end
    
    if (mod(n,2) == 0) 
        cerror ('Considering only Odd Spiral Matrix ')
    end
        
    A = create_spiral(n);
    for i = 1:n
        for j =[i n-i+1]
            out = out + A(i, j);
        end
    end
    
    out = out - A( (n+1)/2, (n+1)/2);
end