function ansi=m_input(t_work, T, p1, P2, t)
t = mod(t, T);%周期设定为100000微秒
if(t>t_work)
    ansi = 0;
else
    ansi = 0.85.*pi.*(0.7.^2).*sqrt(2.*(160-P2)/p1).*p1;%输出结果为一毫秒进油质量(mg/ms)
end
