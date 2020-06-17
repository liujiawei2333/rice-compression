function [comp_target]=rice_coding(target,K)
    if target < 2^K  %值小于K,即二进制有效位小于等于4
        comp_target = dec2bin(target);  %转化为二进制
        comp_target = str2num(comp_target);  %转换为数字
    else
        Q_num = bitshift(target,-K);  %向右移动K位
        Q = num2str(0,['%0',num2str(Q_num),'d']);  %Q_num个0组成Q
        R = bitand(target,(2 ^ K - 1)); %与运算
        R = dec2bin(R,4);  %转化为二进制，保证有4位，左边不足的位数补0
        R = num2str(R);
        comp_target = str2num(strcat("1",Q,R));  %拼接三个字符串并转化为数字
    end
        