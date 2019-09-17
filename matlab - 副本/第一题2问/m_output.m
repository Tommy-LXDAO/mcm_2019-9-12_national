function ansi = m_output(t, p2)
t = mod(t, 1000);
ansi = 0;
if(t > 24)
    ansi = 0;
else
    if(t>0 && t<=2)
        ansi = t*10;
    elseif(t>2 && t<=22)
        ansi = 20;
    elseif(t>22 && t<=24)
        ansi = 240-t*10;
    end
end
ansi = p2.*ansi;%1微秒内出油质量