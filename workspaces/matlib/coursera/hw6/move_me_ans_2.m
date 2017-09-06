function w = move_me_ans_2(v,a)
    if nargin < 2
        a = 0;
    end
    w = [];
    vv = [];
    for ii = 1:length(v)
        if v(ii) ~= a
            w(end+1) = v(ii);
        else
            vv(end+1) = a;
        end
    end
    w = [w vv];
end