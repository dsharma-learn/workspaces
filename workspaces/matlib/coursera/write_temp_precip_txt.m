function write_temp_precip_txt(filename)
    Title_1 = 'Climate Data for Nashville TN';
    Title_2 = 'Average Highs(F), Lows (F) and Preceip (in)';
    Label_1 = 'High';
    Label_2 = 'Low';
    Label_3 = 'Precip';
    Mo_1 = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'};
    Mo_2 = {'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'};
    Data_1 = [ 46 28 3.98
               43 30 4.01
               41 34 5.56
               34 29 6.97
               32 28 7.76
               36 32 8.45];
    Data_2 = [ 44 33 2.98
               41 23 3.01
               39 21 2.56
               28 19 4.97
               26 17 3.76
               22 15 6.45];
    fid = fopen (filename, 'w+t');
    
    if (fid < 0 ) 
        fprintf('Error opening file\n');
        return;
    end
    
    fprintf(fid, '%s\n', Title_1);
    fprintf(fid, '%s\n', Title_2);
    fprintf(fid, '\n');
    
    fprintf(fid, '        %s%s%s\n', Label_1, Label_2, Label_3);
    for ii = 1:6
        fprintf(fid, '%5s', Mo_1{ii});
        fprintf (fid, '%5.2f, %5.2f, %5.2f\n', Data_1(ii,:));
    end 
    
    fprintf(fid, '        %s%s%s\n', Label_1, Label_2, Label_3);
    for ii = 1:6
        fprintf(fid, '%5s', Mo_2{ii});
        fprintf (fid, '%5.2f, %5.2f, %5.2f\n', Data_2(ii,:));
    end 
    fclose(fid);
end 