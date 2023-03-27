%Caner Topuz
%090200358
%Lab5_q1

clear;
clc;

arr = [200 500 700 1000 1500];
charge = 1:length(arr);

for i = 1:length(arr)
if arr(i) <= 500
    charge(i) = 5 + 0.02 * arr(i);
elseif arr(i) > 500 && arr(i) <= 1000
    charge(i) = 5 + 10 + 0.05 * (arr(i) - 500);
elseif arr(i) > 1000
    charge(i) = 5 + 35 + 0.1 * (arr(i) - 1000);
end
fprintf('Used electricity: %.2f Total charge: %.2f$\n',arr(i),charge(i));
end

