function [comp_target]=rice_coding(target,K)
    if target < 2^K  %ֵС��K,����������ЧλС�ڵ���4
        comp_target = dec2bin(target);  %ת��Ϊ������
        comp_target = str2num(comp_target);  %ת��Ϊ����
    else
        Q_num = bitshift(target,-K);  %�����ƶ�Kλ
        Q = num2str(0,['%0',num2str(Q_num),'d']);  %Q_num��0���Q
        R = bitand(target,(2 ^ K - 1)); %������
        R = dec2bin(R,4);  %ת��Ϊ�����ƣ���֤��4λ����߲����λ����0
        R = num2str(R);
        comp_target = str2num(strcat("1",Q,R));  %ƴ�������ַ�����ת��Ϊ����
    end
        