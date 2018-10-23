function output = holiday (month, day)
    month_arr= [1 7 12 12]
    day_arr  = [1 4 25 31]
    output = sum(day_arr==day & month_arr==month)==1
end 