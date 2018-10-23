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

