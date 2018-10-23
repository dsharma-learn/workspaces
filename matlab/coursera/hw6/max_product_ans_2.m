function [lp,li] = max_product (V,n)
    e = length(V);
    if n>e
        lp = 0; 
        li = -1;
    else
        P = -Inf(1,e-n+1);            % preallocate product vector
        for i = 1:e-n+1                
            P(i) = prod(V(i:i+n-1));  % populate product vector
        end
        [lp,li] = max(P);             % return maximum product and its location
    end
end