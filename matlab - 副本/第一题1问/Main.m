function ansi = Main()
Pj = 999;%��ӽ���ѹǿ
tt = 0;
probability = 0.5;
for ii = 100:100:3000%����ֹ���ʱ�䣬Ҳ���ǽ����͹������ڱ�ɶ�̬״̬
    m = 0.85.*500.*25.*pi;%��ѹ�͹�����
    p1 = 0.8733;%��ѹ�ͱ��ܶ�
    P2 = 100;V2 = 25.*pi.*500;
    %�˴���дt_work
    t_work = ii;
    %�˴���дt_rest
    P_max = 0;
    P_min = 99999999999;
    ave = 0;
    for t=1:1000000-1%1e5Ϊһ��������
        m = m + m_input(t_work, t_work+10000, p1, P2, t)/1000;
        P2 = P_2(m);
        %PP = [PP P2];
        m = m - m_output(t, m/V2)./1000;
        %mm = [mm m];
        ave = ave + (P2-100)/1000000;%��ȡƽ����
        if(P2>P_max)
            P_max = P2;
        end
        if(P2<P_min)
            P_min = P2;
        end
    end
    clc
    ii
    if(abs(ave)<Pj)%Ѱ�ҳ����Ž�
        Pj = abs(ave);%ƽ��ֵ�����ӽ���ѹǿ�����и���
        tt = ii;%ƽ��ֵ�����ӽ��Ĺ���ʱ�䲢����
        probability = probability*1.2;
    elseif(probability < 0.5)
        break;
    else
        probability = 0.7*probability;%ģ���˻𣬽��͸��Ӷ�
    end
end
tt
Pj
%a=sprintf("�������Ϊ%lf,��С����Ϊ%lf,����Ϊ%lf\n",m_max,m_min, m_max-m_min);
%disp(a);
%b=sprintf("��ѹ�������ѹǿΪ%lf,��СѹǿΪ%lf,����Ϊ\n",P_max, P_min,P_max-P_min);
%disp(b);