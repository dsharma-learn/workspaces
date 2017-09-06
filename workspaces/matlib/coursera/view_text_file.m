function view_text_file (filename)
    fid = fopen (filename, 'rt');
    
    if (fid < 0)
        error ('Cannot open the file %s.\n\n', filename);
    end 
    
    line = fgets (fid);
    while (ischar(line ))
        fprintf ('%s%n', line);
        line = fgets (fid);
    end
    fprintf ('\n\n');
    fclose (fid);
end