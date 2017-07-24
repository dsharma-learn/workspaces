function overall_income = income (rate, price)
    shift = 2; 
    days_in_week = 6;
    shift_length = 8 ;
    
    overall_income = sum(rate .* price * shift * shift_length * days_in_week);
    
end    