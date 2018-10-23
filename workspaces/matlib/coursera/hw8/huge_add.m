function out = huge_add (input1, input2)
    out = -1;
    digits = '0123456789';
    
    if ( ~ischar (input1) || ~ischar (input2)  || ...
         (sum(~ismember (input1, digits)) > 0) || ...
         (sum(~ismember (input2, digits)) > 0))
        return;
    end

    out = 0;
    carry = 0; 
    max_length = max (length (input1), length (input2));
    
    input1 = pad (input1, max_length, 'left','0');
    input2 = pad (input2, max_length, 'left','0');
    
    out = pad ('', max_length, 'left', ' ');
    for i= max_length:-1:1
        val1 = input1(i);
        val2 = input2(i);
        val_sum = str2num(val1) + str2num(val2) + carry;
        if (val_sum > 9)
            carry = 1;
        else 
            carry = 0;
        end 
        out(i) = num2str(mod(val_sum, 10));
    end     
    if carry > 0
        out = cat (1, '1', out')';
    end 
end 