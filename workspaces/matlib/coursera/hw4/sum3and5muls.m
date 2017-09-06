function val = sum3and5muls (n)
    list = 1:n;
    val = sum(list ( mod(list,3)==0 | mod(list,5)==0));
    
    % Alternate: 
    % val= sum(3:3:n) + sum(5:5:n) - sum(15:15:n);
end
end 
