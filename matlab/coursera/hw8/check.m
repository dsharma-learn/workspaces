function check(V,d,L)
  p = prod(V);
  if p>L(1)                                % if new product larger than any previous
    L = [p,d];                             % then update product, home and direction 
  end  
end

