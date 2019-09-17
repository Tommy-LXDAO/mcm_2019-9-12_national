function f = Main2()%解决从100MPa到150MPa的问题
Pj = 999;%最接近的压强
tt = 0;
Pi = 0;
for ii = 1:1:9%计算分工作时间，也就是将进油工作周期变成动态状态
    m = 0.85*500.*25.*pi;%高压油管质量
    p1 = 0.8733;%高压油泵密度
    P2 = 100;V2 = 25.*pi.*500;
    %此处填写t_work
    t_work = ii;
    %此处填写t_rest
    PP = zeros(1, 2000012);
    PP(1) = P2;
    P_max = 0;
    P_min = 99999999999;
    for t=2:20000%1e5为一整个周期
        m = m + m_input(t_work, t_work+100, p1, P2, t)/10;
        P2 = P_2(m);
        PP(t) = PP(t);
        m = m - m_output(t, m/V2)./10;
        if(P2>P_max)
            P_max = P2;
        end
        if(P2<P_min)
            P_min = P2;
        end
    end
    if(abs(P2-150)<Pj)%寻找出最优解
        Pj = abs(P2-150);%绝对值算出最接近的压强，进行更新
        Pi = P2-150;
        tt = ii;%绝对值算出最接近的工作时间并更
    end
end
2
tt
Pi
Pj = 999;%最接近的压强
tt = 0;
Pi = 0;
for ii = 1:1:8%计算分工作时间，也就是将进油工作周期变成动态状态
    m = 0.85*500.*25.*pi;%高压油管质量
    p1 = 0.8733;%高压油泵密度
    P2 = 100;V2 = 25.*pi.*500;
    %此处填写t_work
    t_work = ii;
    %此处填写t_rest
    PP = zeros(1, 2000012);
    PP(1) = P2;
    P_max = 0;
    P_min = 99999999999;
    for t=2:50000%1e5为一整个周期
        m = m + m_input(t_work, t_work+100, p1, P2, t)/10;
        P2 = P_2(m);
        PP(t) = PP(t);
        m = m - m_output(t, m/V2)./10;
        if(P2>P_max)
            P_max = P2;
        end
        if(P2<P_min)
            P_min = P2;
        end
    end
    if(abs(P2-150)<Pj)%寻找出最优解
        Pj = abs(P2-150);%绝对值算出最接近的压强，进行更新
        Pi = P2-150;
        tt = ii;%绝对值算出最接近的工作时间并更新
    end
end
5
tt
Pi
Pj = 999;%最接近的压强
tt = 0;
Pi = 0;
for ii = 1:1:900%计算分工作时间，也就是将进油工作周期变成动态状态
    m = 0.85*500.*25.*pi;%高压油管质量
    p1 = 0.8733;%高压油泵密度
    P2 = 100;V2 = 25.*pi.*500;
    %此处填写t_work
    t_work = ii;
    %此处填写t_rest
    PP = zeros(1, 2000012);
    PP(1) = P2;
    P_max = 0;
    P_min = 99999999999;
    for t=2:100000%1e5为一整个周期
        m = m + m_input(t_work, t_work+100, p1, P2, t)/10;
        P2 = P_2(m);
        PP(t) = PP(t);
        m = m - m_output(t, m/V2)./10;
        if(P2>P_max)
            P_max = P2;
        end
        if(P2<P_min)
            P_min = P2;
        end
    end
    if(abs(P2-150)<Pj)%寻找出最优解
        Pj = abs(P2-150);%绝对值算出最接近的压强，进行更新
        Pi = P2-150;
        tt = ii;%绝对值算出最接近的工作时间并更新
    else
        break;
    end
end
10
tt
Pi