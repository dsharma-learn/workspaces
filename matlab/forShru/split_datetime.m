function datetime_tab = split_datetime (datetimeval, name)   
  time_part = datestr(datetimeval, 'HH:MM:SS');
  date_part = datestr(datetimeval, 'yyyy-mm-dd');

  datetime_tab = table (date_part,time_part);
  datetime_tab.Properties.VariableNames = {horzcat(name,'_date_part'), horzcat(name,'_time_part')};
end  
  
