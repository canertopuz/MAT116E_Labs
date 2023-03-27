%Caner Topuz
%090200358
%Lab_6-Q1

function res = findPath(path)
%F1 Summary of this function goes here
%   Detailed explanation goes here
[i,j] = size(path);
i1 = 1;
j1 = 1;
r = zeros(1,i+j-2);
for t = 1:i+j-2
   if i1 == i
       r(t:end) = 3;
       break;
   elseif j1 == j
       r(t:end) = 2;
       break;
   else
       if path(i1+1,j1) == 1
           r(t) = 2;
           i1 = i1+1;
       else
           r(t) = 3;
           j1 = j1+1;
       end
   end
end
    
res = char(1,i+j-2);
for t=1:i+j-2
    if r(t) == 2
    res(t) = 'D';
    else
    res(t) = 'R';
    end
end
end