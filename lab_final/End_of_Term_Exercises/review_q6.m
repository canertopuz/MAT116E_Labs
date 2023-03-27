% Caner Topuz
% 090200358
% Review_Q6
clear
close all
clc

E = imread('EncryptedImage.png');
load('division_values.mat');

[row,col,channel] = size(E);
decryptedImage = zeros(row,col,3,'double');
E = double(E);

for i= 1:row
    for j= 1:col
        for k= 1:channel
            if mod(i+j,k) == 0
                decryptedImage(i,j,k) = ((E(i,j,k) + division(i,j,k)*100)-127)/4;
            else
                decryptedImage(i,j,k) = ((E(i,j,k) + division(i,j,k)*200)-255)/4;
            end      
        end
    end
end

decryptedImage = decryptedImage*255/max(decryptedImage(:));
decryptedImage = uint8(decryptedImage);
E = uint8(E);
imshow(E);
figure;
imshow(decryptedImage);