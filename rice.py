def rice_coding(target):
    K = 4
    if target < 2 ** K:#低于4位
        return int(bin(target)[2:])
        
    else:
        Q = target >> K
        s_Q = "0" * Q
        R = bin(target & (2**K - 1))
        s_R = R[2:]
        for i in range(K - len(s_R)):
            s_R = "0" + s_R
        comp_target = "1" + s_Q + s_R
        return int(comp_target)

def rice_decoding(target):
    K=4
    if len(str(target)) == 4:
        return int(str(target),2)
    else:
        s_R = str(target)[len(str(target)) - K:]
        R = int(s_R,2)
        s_Q = str(target)[1:len(str(target)) - K]
        Q = len(s_Q)
        decomp_target = Q * 2 ** K + R
        return decomp_target

list = [10,12,14,18,36]
comp_list = []
for i in range(len(list)):
    comp_list.append(rice_coding(list[i]))
print(comp_list)

decomp_list = []
for i in range(len(comp_list)):
    decomp_list.append(rice_decoding(comp_list[i]))
print(decomp_list)
