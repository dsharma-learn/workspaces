function fare_val = fare(distance, age)
    distance=round(distance);
    if distance <= 1 
        fare_val = 2;
    elseif distance >1 && distance <=10
        fare_val = 2 + (distance - 1)*0.25;
    else 
        fare_val = 2 + 9*0.25 + (distance - 10)*0.10;
    end 
    
    if age >= 60 || age <= 18
        fare_val = 0.8*fare_val;
    end 
end 