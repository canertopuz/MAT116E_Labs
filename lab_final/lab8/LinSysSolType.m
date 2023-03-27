%Caner Topuz
%090200358
%Lab8-Q2
function LinSysSolType(A,b)

%Genişletilmiş matrisi oluşturdum.
aug = [A b];

%Soruda istenilen koşullara uygun olarak if-else yapısını oluşturdum.
if rank(A) < rank(aug)
    fprintf('No solution\n');
else
    if rank(A) == length(b)
        fprintf('Exactly one solution\n');
    else
        fprintf('Infinitely many solution\n');
    end
end

end