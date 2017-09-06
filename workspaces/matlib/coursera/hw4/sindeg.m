function [sinX,avg ] = sindeg (deg)
    sinX=sin (deg*pi/180)
    avg=mean(sinX(:))
end
