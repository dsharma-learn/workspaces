function diff = day_diff(month1, day1,month2, day2)
    num_days_month = [31 28 31 30 31 30 31 31 30 31 30 31];

    if ~isscalar (month1) || ~isscalar (day1) || ~isscalar (month2) || ~isscalar (day2) || floor(month1)~= month1 || floor(day1)~= day1 || floor(month2)~= month2 || floor(day2)~= day2 || month1 < 1 || month1 > 12 || month2 < 1 || month2 > 12 || day1 < 1 || day2 < 1 || num_days_month(month1)< day1 || num_days_month(month2)< day2 
        diff=-1;
        return;
    end
    
    if month1 < month2
        m1 = month1; d1 = day1;
        m2 = month2; d2 = day2;
    elseif month2 < month1
        m1 = month2; d1 = day2;
        m2 = month1; d2 = day1;
    elseif  day1 < day2
        m1 = month1; d1 = day1;
        m2 = month2; d2 = day2;
    else         
        m1 = month2; d1 = day2;
        m2 = month1; d2 = day1;
    end
    
    if m1==m2 
        diff = abs(d1-d2);
    else 
        diff = sum( num_days_month(m1+1:m2-1)) +  num_days_month (m1) - d1 + d2;
    end 
end