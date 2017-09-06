function out = create_spiral (n)
    
    if nargin ~= 1 
        error ('Invalid Number of args.');
    end
    
    N_VAL = (n+1)/2;
    lastval = n*n;
    
    
    if mod (n,2) == 1
        A = zeros (n);
        
        for N = 1:N_VAL
            % ROW FIRST:
            i = N;
            for j = n-N+1:-1:N
                A(i,j) = lastval;
                lastval = lastval - 1;
            end
            
            % COL FIRST:
            j = N;
            for i = N+1:n-N+1
                A(i,j) = lastval;
                lastval = lastval - 1;
            end
            
            % ROW LAST:
            i = n-N+1;
            for j = N+1:n-N+1
                A(i,j) = lastval;
                lastval = lastval - 1;
            end
            
            % COL LAST:
            j = n-N+1;
            for i = n-N:-1:N+1
                A(i,j) = lastval;
                lastval = lastval - 1;
            end
        end
    else
        A=[];
    end
    out = A;
end