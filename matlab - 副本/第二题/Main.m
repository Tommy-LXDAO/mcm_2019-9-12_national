function f=Main()

V2 = 25*pi*500;
Pj = 999;
Pi = Pj;
ww = 0;
p1 = 0.8041;
w = 42;
ff = 0;
    p2 = 0.85;
    P1 = 0.5;
    P2 = 100;
    V1 = 114.7592;
    T = 2*pi/w;%单位为秒
    m1 = V1 * p1;
    m2 = p2 * V2;
    sums = 0;
    PP = zeros(1,100000);
    INPUT = zeros(1,100000);
    OUTPUT = zeros(1,100000);
    sumss = 0;
    for t=1:100000
        mi = m_input(m1,T*100000,P2,t)/100;%获取质量
        m1 = m1 - mi;
        INPUT(t) = mi;
        if(floor(t/T/1000)>ff)
            m1 = 92.2779;
            ff = floor(t/T/1000);
        end
        m2 = m2 + mi;
        P2 = P_2(m2);%获取压强P2
        sums = sums+P2-100;%将压强数据加入数组便于计算平均值
        mi = m_output(t, p2, P2)/100;%对m2进行更新
        OUTPUT(t) = mi;
        m2 = m2 - mi;
        p2=exp(1)^((524288000*2480233524838268911^(1/2)*atanh((262144*2480233524838268911^(1/2)*(2*P2 - 5474))/2480233524838268911))/2480233524838268911+0.2924);
        P2 = P_2(m2);%获取压强P2
        PP(t) = P2;
        sumss = sumss + mi;
    end
    t = 1:100000;
    plot(t,INPUT,t,OUTPUT,t,PP);