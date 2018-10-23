function [num_seg, num_poles]= fence(lng,seg)
    num_seg = ceil(lng/seg)
    num_poles = num_seg + 1 
end
