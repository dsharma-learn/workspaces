function amag = accelerate(F1,F2,m)
    F=F1+F2;
    amag = sqrt(sum(F.*F))/m;
end 