list = [10,12,14,18,36];  %待压缩数据

K = 4;  %k阶样本分裂

%数据压缩过程
comp_list = [];
for i = 1:length(list)
    comp_list = [comp_list rice_coding(list(i),K)];
end
comp_list  %压缩后的数据

%数据解压过程
decomp_list = [];
for i = 1:length(comp_list)
    decomp_list = [decomp_list rice_decoding(comp_list(i),K)];
end
decomp_list  %解压缩后的数据
