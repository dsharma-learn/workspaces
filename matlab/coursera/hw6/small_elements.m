function indexes = small_elements(X)
    
    indexes = [] ;
    
    dims_X = size(X);
    rows = dims_X(1);
    cols = dims_X(2);
    
    for j = 1:cols
        for i = 1:rows
            if X(i,j) < i*j
                indexes = [indexes; i j] ;
            end
        end
    end
end
    
    %     1 2*
    %     2 4
    %     3 6
    %
    %     1 1
    %     0 4
    %     6 5
    %
    %     1,2
    %     2,1
    %     3,2