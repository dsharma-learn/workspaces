% function [est, k] = approximate_e(delta)
%     k    = 0;       % Start with 0'th iteration
%     est  = 1;
%     x = exp(1);  
%     F  = 1;
% while abs(est - x) > delta && k < 10000
%   k = k + 1;    
%   if k <2
%     est = est + 1;
%   else
%     F = F * k;   
%     est = est + 1 / F;
%   end
% end
% 
function [out, k] = approximate_e (delta)
    
    exp_1 = exp(1);
    out = 1;
    k = 0;
    
%    if delta < 0 
%        delta = 0;
%    end    
        
    while abs(out-exp_1) > delta
        k=k+1;
        if k == 1
            out = out + 1
        else 
            out = out + 1/myfact(k);
        end
    end
end