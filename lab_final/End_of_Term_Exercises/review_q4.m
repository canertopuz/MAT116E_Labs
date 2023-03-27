function results = review_q4(N,position) 
% Function moves the horse randomly N steps without leaving the chessboard.
% Returns each moves
n = 0;
positioN = zeros(1,2);
steps = zeros(N,2);
results = strings(N,2);
positioN(1) = str2double(position(2)); 

switch position(1)
    case 'A'
        positioN(2) = 1;
    case 'B'
        positioN(2) = 2;   
    case 'C'
        positioN(2) = 3;
    case 'D'
        positioN(2) = 4;
    case 'E'
        positioN(2) = 5;
    case 'F'
        positioN(2) = 6;
    case 'G'
        positioN(2) = 7;
    case 'H'
        positioN(2) = 8;
    otherwise 
        fprintf('Error!!\n');
        return;
end

while n~=N
    move = randi([1 8]);
    positioNC = positioN;
    switch move
        case 1
           positioN(1) = positioN(1) + 2;
           positioN(2) = positioN(2) + 1;
        case 2
           positioN(1) = positioN(1) + 1;
           positioN(2) = positioN(2) + 2;
        case 3
           positioN(1) = positioN(1) - 1;
           positioN(2) = positioN(2) + 2;
        case 4
           positioN(1) = positioN(1) - 2;
           positioN(2) = positioN(2) + 1;
        case 5
           positioN(1) = positioN(1) - 2;
           positioN(2) = positioN(2) - 1;
        case 6
           positioN(1) = positioN(1) - 1;
           positioN(2) = positioN(2) - 2;
        case 7
           positioN(1) = positioN(1) + 1;
           positioN(2) = positioN(2) - 2;
        case 8
           positioN(1) = positioN(1) + 2;
           positioN(2) = positioN(2) - 1;
    end
    
    if (positioN(1) <= 8 && positioN(1) >= 1) && (positioN(2) <= 8 && positioN(2) >= 1)
        n = n + 1;
        steps(n,:) = positioN;
        switch positioN(2)
            case 1
                results(n,1) = 'A';
            case 2
                results(n,1) = 'B'; 
            case 3
                results(n,1) = 'C';
            case 4
                results(n,1) = 'D';
            case 5
                results(n,1) = 'E';
            case 6
                results(n,1) = 'F';
            case 7
                results(n,1) = 'G';
            case 8
                results(n,1) = 'H';
        end
        results(n,2) = sprintf('%d',positioN(1));
        continue;
        else
            positioN = positioNC;
    end
end

for i = 1:N
    fprintf('Step-%d Position: %c%c\n',i,results(i,1),results(i,2));
end
end