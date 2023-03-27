%Caner Topuz
%090200358
%Lab_7 Q2

function err = SSE_val(s,s_aprx)

sum = 0;

for i = 1:size(s,2)
    sum = sum + (s(i) - s_aprx(i))^2;
end

err = sum;