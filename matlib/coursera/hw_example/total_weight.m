function [tw,tv] = total_weight (vol, wd) 
    tw= sum(vol .* wd);
    tv = sum(vol);
end     
    