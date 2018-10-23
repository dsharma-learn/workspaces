function  peri_sum = peri_sum (A)
    peri_sum = sum (A(1,:) +  A(end,:)) + sum(A (2:end-1, 1) + A (2:end-1, end))
end     