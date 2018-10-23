function out_val = exp_average (in, b)
    persistent out;
    persistent coefficient;
    
    fprintf("%f : %f : %f \n", out, coefficient, in)
    if nargin == 0
        error ('invalid arguments');
    end 
    
    if nargin == 2 
        out = in;
        coefficient = b;
        out_val = out;
    end
    
    if nargin == 1 
        if isempty(coefficient) && isempty (out)
            coefficient = 0.1;
        end
        
        if isempty (out)
            out = in;
        else
            out = coefficient * in + (1 - coefficient) * out;
        end 
    end

    out_val = out;    
end