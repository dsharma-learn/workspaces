function s = peri_sum(A)
    B = A(2:end-1,2:end-1);
    s = sum(A(:)) - sum(B(:));
    
    % Alternate: 
    %  s = sum(A(1,:)) + sum(A(end,:)) + sum(A(2:end-1,1)) + sum(A(2:end-1,end));
end