function f = Main2()%�����100MPa��150MPa������
Pj = 999;%��ӽ���ѹǿ
tt = 0;
Pi = 0;
for ii = 1:1:9%����ֹ���ʱ�䣬Ҳ���ǽ����͹������ڱ�ɶ�̬״̬
    m = 0.85*500.*25.*pi;%��ѹ�͹�����
    p1 = 0.8733;%��ѹ�ͱ��ܶ�
    P2 = 100;V2 = 25.*pi.*500;
    %�˴���дt_work
    t_work = ii;
    %�˴���дt_rest
    PP = zeros(1, 2000012);
    PP(1) = P2;
    P_max = 0;
    P_min = 99999999999;
    for t=2:20000%1e5Ϊһ��������
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
    if(abs(P2-150)<Pj)%Ѱ�ҳ����Ž�
        Pj = abs(P2-150);%����ֵ�����ӽ���ѹǿ�����и���
        Pi = P2-150;
        tt = ii;%����ֵ�����ӽ��Ĺ���ʱ�䲢��
    end
end
2
tt
Pi
Pj = 999;%��ӽ���ѹǿ
tt = 0;
Pi = 0;
for ii = 1:1:8%����ֹ���ʱ�䣬Ҳ���ǽ����͹������ڱ�ɶ�̬״̬
    m = 0.85*500.*25.*pi;%��ѹ�͹�����
    p1 = 0.8733;%��ѹ�ͱ��ܶ�
    P2 = 100;V2 = 25.*pi.*500;
    %�˴���дt_work
    t_work = ii;
    %�˴���дt_rest
    PP = zeros(1, 2000012);
    PP(1) = P2;
    P_max = 0;
    P_min = 99999999999;
    for t=2:50000%1e5Ϊһ��������
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
    if(abs(P2-150)<Pj)%Ѱ�ҳ����Ž�
        Pj = abs(P2-150);%����ֵ�����ӽ���ѹǿ�����и���
        Pi = P2-150;
        tt = ii;%����ֵ�����ӽ��Ĺ���ʱ�䲢����
    end
end
5
tt
Pi
Pj = 999;%��ӽ���ѹǿ
tt = 0;
Pi = 0;
for ii = 1:1:900%����ֹ���ʱ�䣬Ҳ���ǽ����͹������ڱ�ɶ�̬״̬
    m = 0.85*500.*25.*pi;%��ѹ�͹�����
    p1 = 0.8733;%��ѹ�ͱ��ܶ�
    P2 = 100;V2 = 25.*pi.*500;
    %�˴���дt_work
    t_work = ii;
    %�˴���дt_rest
    PP = zeros(1, 2000012);
    PP(1) = P2;
    P_max = 0;
    P_min = 99999999999;
    for t=2:100000%1e5Ϊһ��������
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
    if(abs(P2-150)<Pj)%Ѱ�ҳ����Ž�
        Pj = abs(P2-150);%����ֵ�����ӽ���ѹǿ�����и���
        Pi = P2-150;
        tt = ii;%����ֵ�����ӽ��Ĺ���ʱ�䲢����
    else
        break;
    end
end
10
tt
Pi