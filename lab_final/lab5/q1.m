%Caner Topuz
%090200358
%Lab5_q1

clear;
clc;

arr_size = 15;
arr = -101 + randi(201,1,arr_size);
harmonic_av = 0;
summ = 0;
p_num = 0;

for i = 1:arr_size 
    if(arr(i) > 0)
        p_num = p_num + 1;
        summ = summ + 1/arr(i);
    end
end

if p_num ~= 0
harmonic_av = p_num / summ; 
end

display(arr);
fprintf('Harmonic average is: %f\n',summ);