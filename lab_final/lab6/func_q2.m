%Caner Topuz
%090200358
%Lab_6-Q2

function res = func_q2(arr,city,type)

%Find coordinates of the giving city
i = find(arr(:,1) == city);
x0 = str2double(arr(i,2));
y0 = str2double(arr(i,3));
z0 = str2double(arr(i,4));
mindis = inf;

[r,~] = size(arr);


switch type
    case 'M'
        for t = 1:r
            if t == i %Skips itself
            continue;
            end
            %Manhattan Distance Metric
            dis = abs(x0-str2double(arr(t,2))) + abs(y0-str2double(arr(t,3))) + abs(z0-str2double(arr(t,4)));
            %Finding minimum distance and index of it
            if dis < mindis 
                mindis = dis;
                index = t;
            end
        end
      
    case 'E'
        for t = 1:r
            if t == i%Skips itself
            continue;
            end
            %Euclidean Distance Metric
            dis = (x0-str2double(arr(t,2)))^2 + (y0-str2double(arr(t,3)))^2 + (z0-str2double(arr(t,4)))^2;
            dis = sqrt(dis);
            %Finding minimum distance and index of it
            if dis < mindis 
                mindis = dis;
                index = t;
            end
        end
    otherwise
        fprintf("Error");

end
%Result
fprintf('Distance is:%.2f\n',mindis);
res = arr(index,1);
end