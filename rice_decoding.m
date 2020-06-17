function [decomp_target]=rice_decoding(target,K)
    target = num2str(target);
    if length(target) == K  %ֵ����K,ֱ��ת��Ϊʮ����
        decomp_target = bin2dec(target);
    else
        R = target(length(target)-K+1:end);  %��ȡR
        R = bin2dec(R);
        Q_num = num2str(target(1:length(target)-K-1));  %��ȡ��ʾQ�Ĳ��֣��ò��ֳ���ΪQֵ
        Q = length(Q_num);
        decomp_target = Q * 2^K + R;
    end
        