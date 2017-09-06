function [a b c] = sort3 (M)
   % a=0;b=0;c=0;
    if M(1) <= M(2)         
        if M(2)<= M(3)
            a=M(1);b=M(2);c=M(3);
        else 
            if  M(3)>=M(1)
                a=M(1);b=M(3);c=M(2);
            else 
                a=M(3);b=M(1);c=M(2);
            end
        end
    else
        if M(3)<= M(2)
            a=M(3);b=M(2);c=M(1);
        else 
            if  M(3)>=M(1)
                a=M(2);b=M(1);c=M(3);
            else 
                a=M(2);b=M(3);c=M(1);
            end
        end
    end
end 