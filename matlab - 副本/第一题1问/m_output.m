function ansi = m_output(t, p2)
t = mod(t, 100000);
ansi = 0;
if(t > 2400)
    ansi = 0;
else
    if(t>0 && t<=200)
        ansi = t/10;
    elseif(t>200 && t<=2200)
        ansi = 20;
    elseif(t>2200 && t<=2400)
        ansi = 240-t/10;
    end
end
ansi = p2.*ansi;%1微秒内出油质量