function X = reverse_diag(n)
   I = zeros(n);
   I(1: n+1 : n^2)=1;
   X = flip(I, 2) % this line will reverse the elements in each row.
   
   %ALTERNATE 1:
   % D = zeros(n);
   % D(n:max([1,n-1]):max([n,n^2-1])) = 1;
   
   %ALTERNATE 2:
   %D = zeros(n);
   %D(1:n+1:end) = 1;
   %D = flip(D);

    
end