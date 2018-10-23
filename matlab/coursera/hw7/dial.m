% function out = dial(inp)
%     dig = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
%     vec = '012345678922233344455566677778889999'-'0';
%     
%     %If Some Special Chars allowed, e.g. : '-', '(' and ')'
%     %allowed_special_chars = '-()';
%     %inp = inp( ~ismember(inp,allowed_special_chars));
%     
%     % Check if there are any invalid characters. If yes, return 0.
%     invalid_chars = ~ismember(inp,dig);
%     if sum(invalid_chars)>0 
%         out = uint64(0);
%         return;
%     end 
% 
%     [ida,idb] = ismember(inp,dig);
%     vec_nums = uint64(vec(idb));
%         
%     bases = 10*ones(1,length(inp));
%     exponents = (length (inp)-1:-1:0);
%     multiplier = uint64(bases.^exponents);
%     out = uint64(sum(vec_nums .* multiplier));    
% end

function out = dial(inp)
    dig = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    vec = '012345678922233344455566677778889999';
    
    % Check if there are any invalid characters. If yes, return 0.
    if sum(~ismember(inp,dig))>0
        out = uint64(0);
        return;
    end
    
    [~,idb] = ismember(inp,dig);
    out = sscanf(vec(idb),'%lu');
end

