function w = move_me_ans_1(v,a)
    if nargin<2, 
        a = 0; 
    end
    w = [v(v ~= a) v(v == a)];
end