%Caner Topuz
%090200358
%Question-2

clear;
clc;
close all;

R = randi(50,10);
R_2 = 10 + randi(45,10);
count = 1;
indx = 1;

dist = zeros(10,10);
dist_l = zeros(1,1);
index = zeros(1,1);

for i = 1:10
    for j = 1:10
        trash = (R(:,i)-R_2(:,j)).^2;
        trash = sum(trash);
        dist(i,j) = sqrt(trash);

        if dist(i,j) < 45
            dist_l(count,1) = dist(i,j);
            index(count,1) = indx;
            count = count + 1;
        end
        indx = indx + 1;
    end
end

if count < 2
    fprintf('Error!\n');
else
    fprintf('The distance less than 45 are:\n');
    disp(dist_l);
    fprintf('Their index are:\n');
    disp(index);

end