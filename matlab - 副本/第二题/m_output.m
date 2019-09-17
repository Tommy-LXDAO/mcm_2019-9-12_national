function ansi = m_output(t, p2, P2)%分度值为0.01毫秒
t = mod(t, 10000);
h = 0;
if(t > 245)
    ansi = 0;
else
    t = t / 100;
    if(t>0 && t<=0.16)
        h = 77.124*t^3.83;
    elseif(t>0.16 && t<=0.45)
        h = -31.651*t^3+125.903*t^2-127.9*t+2.484;
    elseif(t>0.45 && t<=2)
        h = 2;
    elseif(t>2 && t<=2.34)
        h = -70.685*(t-2)^2+14.675*(t-2)+84.979;
    elseif(t>2.34 && t<=2.45)
        h = (t-2)^(51.773)*7.971E+16;
    end
    R = 1.25+h*tan(6/180*pi);
    r = 1.25;
    S = pi*(R^2-r^2);
    ansi = S*0.85*sqrt(2*(P2-0.101)*p2)/100;%直接输出质量mg/ms
    ansi = ansi;
end

%ansi = pi*((1.25/tan(9/180*pi)+ansi)^2*tan(9/180*pi)^2-1.25^2);
%ansi = ansi * 0.85 * sqrt(2*(P2-0.101)/p2)*p2;
%if(ansi < 0)
%    ansi = 0;
%end
%ansi = p2.*ansi;%1微秒内出油质量