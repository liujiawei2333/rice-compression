function [decomp_target]=rice_decoding(target,K)
    target = num2str(target);
    if length(target) == K  %值等于K,直接转化为十进制
        decomp_target = bin2dec(target);
    else
        R = target(length(target)-K+1:end);  %提取R
        R = bin2dec(R);
        Q_num = num2str(target(1:length(target)-K-1));  %提取表示Q的部分，该部分长度为Q值
        Q = length(Q_num);
        decomp_target = Q * 2^K + R;
    end
        