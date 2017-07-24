function [time_in_min, distance_miles ] = light_speed (distance_KM)
    miles_to_kms = 1.609;
    speed_light_km_sec= 300000;
    speed_light_km_min=speed_light_km_sec * 60;
    time_in_min = distance_KM ./ speed_light_km_min;
    distance_miles = distance_KM / miles_to_kms;
end