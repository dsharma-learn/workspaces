function percent = zero_stat (mat)
    zeros_vec = (mat==0);
    ones_vec = (mat==1); 
    zc=sum(zeros_vec (:));
    oc=sum(ones_vec (:));
    percent = zc*100/(zc+oc);
    
    % Alternate: 
    %     percent = 100 * (numel(mat) - sum(mat(:))) / numel(mat);

end 