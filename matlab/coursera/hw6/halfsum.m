function sum = halfsum (A)

    dim = size(A);
    xdim = dim (1);
    ydim = dim (2);

    minval = min (xdim, ydim);

    array = A (end-minval+1:end,end-minval+1:end)


    sum = 0;
    for i = 1:minval
        for j = minval-i+1:minval
            sum = sum + array(i,j);
        end
    end
end


% function sumval = halfsum (A)
%     lowerRight = fliplr(tril(fliplr(A)));
%     sumval = sum (lowerRight(:));
% end