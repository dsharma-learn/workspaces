% function a = triangle_wave (n)
%     sump=0;
%     m = linspace(0,4*pi,1001);
%     p = zeros(1, length(m));
%     c = length (m);
%     
%     for t = 1:c
%         val_t = m(t);
%         for k = 0:n
%             f = (-1)^k * sin(val_t * (2*k + 1));
%             g = (2*k+1)^2;
%             b = f/g;
%             sump=sump+b;
%         end
%         p(t) = sump;
%         sump=0;
%     end     
%     a=p;
% end 

% function [sums] = triangle_wave (n)
%     T = linspace(0,4*pi,1001);
%     
%     sums = zeros (1,1001);
% 
%     for i = 1:length(T)
%         value = 0;
%         for k = 0:n
%             value = value +  ( (-1)^k * sin((2*k + 1)*T(i))/( (2*k+1)^2));
%         end
%         sums(i) = value; 
%     end     
% end 

function [sums] = triangle_wave (n)
    T = linspace(0,4*pi,1001);
    
    sums = zeros (1, 1001);
    for i = 1:length(T)
        sums(i) = calculate_formula (T(i),n);
    end 
    
    function value = calculate_formula (t, N)  
        value = 0;
        for k = 0:N
            value = value +  ( (-1)^k * sin((2*k + 1)*t)/( (2*k+1)^2));
        end
    end
end 