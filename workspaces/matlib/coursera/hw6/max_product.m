function [product, ind] = max_product (v, n)
    product = 0;
    ind = -1;
    prevmax = 0; 
    
    v = [v];
    
    if (n >  length (v) ) 
        return;
    end
    
    if (length(v) == 1) 
        product = v(1);
        ind=1;
        return; 
    end   
    
    for i = 1:length(v)-n+1
        product = prod(v(i:i+n-1)); 
        if product > prevmax 
            prevmax = product;
            ind = i;
        end
    end
    product = prevmax;
    
end 