function w=move_me(v,a)
    if ~exist('a','var'),a=0;end
    w=[v(v~=a) v(v==a)];
end

% function out = move_me (v, a)
%    
%     if ( nargin < 2)
%         a=0;
%     end
%    
%    i = 1;
% 
%    while i <= length(v) 
%       if ( v(i) == a ) 
%           for j = i+1:length(v)
%               v(j-1) = v(j);
%           end 
%           v(j) = a;
%           i = i-1;
%       else 
%           i = i+1;
%       end
%    end
%    out = v; 
% end
% 
