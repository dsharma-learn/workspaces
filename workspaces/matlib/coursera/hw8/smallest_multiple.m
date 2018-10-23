function y = smallest_multiple(x)
    y = uint64(1);
    for n = 1:x
        y = y * (n / gcd(y,n));   
    end
    if y == intmax('uint64')
       y = uint64(0);
    end
end
