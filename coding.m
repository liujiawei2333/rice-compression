list = [10,12,14,18,36];  %��ѹ������

K = 4;  %k����������

%����ѹ������
comp_list = [];
for i = 1:length(list)
    comp_list = [comp_list rice_coding(list(i),K)];
end
comp_list  %ѹ���������

%���ݽ�ѹ����
decomp_list = [];
for i = 1:length(comp_list)
    decomp_list = [decomp_list rice_decoding(comp_list(i),K)];
end
decomp_list  %��ѹ���������
