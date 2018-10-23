function S = simple_stats_ans(N)
    S = [mean(N,2) median(N,2) min(N,[],2) max(N,[],2)];
    % Alternate: 
    %     S = [mean(N'); median(N'); min(N'); max(N')]';

end