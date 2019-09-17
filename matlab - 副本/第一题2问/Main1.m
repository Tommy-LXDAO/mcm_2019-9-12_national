function ansi = Main1()%解决维持稳定在150Mpa下的最优方式
Pj = 999;%最接近的压强
tt = 0;
probability = 0.5;
for ii = 100:100:90000%计算分工作时间，也就是将进油工作周期变成动态状态
    m = 0.8696.*500.*25.*pi;%高压油管质量
    p1 = 0.8733;%高压油泵密度
    P2 = 150;V2 = 25.*pi.*500;
    %此处填写t_work
    t_work = ii;
    %此处填写t_rest
    P_max = 0;
    ave = 0;
    P_min = 99999999999;
    for t=1:1000000-1%当前为一整个周期
        m = m + m_input(t_work, t_work+10000, p1, P2, t)/1000;
        P2 = P_2(m);
        %PP = [PP P2];
        m = m - m_output(t, m/V2)./1000;
        %mm = [mm m];
        ave = ave + (P2-150)/1000000;%获取平均数
        if(P2>P_max)
            P_max = P2;
        end
        if(P2<P_min)
            P_min = P2;
        end
    end
    clc
    ii
    if(abs(ave)<Pj)%寻找出最优解
        Pj = abs(ave);%平均值算出最接近的压强，进行更新
        tt = ii;%平均值算出最接近的工作时间并更新
        probability = 1.3*probability;
    elseif(probability < 0.5)
        break;
    else
        probability = 0.8*probability;%模拟退火，降低复杂度
    end
end
tt
Pj
%a=sprintf("最大质量为%lf,最小质量为%lf,极差为%lf\n",m_max,m_min, m_max-m_min);
%disp(a);
%b=sprintf("高压管内最大压强为%lf,最小压强为%lf,极差为\n",P_max, P_min,P_max-P_min);
%disp(b);