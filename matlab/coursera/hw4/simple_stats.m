function S = simple_stats (N)
    mean_col   = mean(N')'    
    median_col = median(N')'
    min_col    = min (N')'
    max_col    = max (N')'
    S=[mean_col median_col min_col max_col]
end 

