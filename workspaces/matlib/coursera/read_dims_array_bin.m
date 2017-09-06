function [A] = read_dims_array_bin (filename, data_type)
    fid = fopen (filename, 'r+');
    if fid < 0 
        error ('cant open file');
    end
        
    n = fread (fid, 1, 'double');
    dims = fread (fid, n, 'double');
    A = fread (fid, inf, data_type);
    A = reshape (A, dims');
    fclose(fid);      
end