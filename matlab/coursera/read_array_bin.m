function [A] = read_array_bin (filename,data_type)
    fid = fopen (filename, 'r+');
    if fid < 0 
        error ('cant open file');
    end
    
    A = fread (fid, inf, data_type);
    fclose(fid);      
end