function [x_train, x_test ] = training()
%TRAINING Summary of this function goes here
%   Detailed explanation goes here
x_test = [];
x_train = [];
for i=1:40
    for j=1:10
        fileName = strcat('/Users/Braden/Documents/MATLAB/ESE 224/Lab 11/att_faces/s', num2str(i), '/', num2str(j), '.pgm');
        im = im2double(imread(fileName));
        im = reshape(im, numel(im),1);
        if j == 1
            x_test = [x_test im];
        else
            x_train = [x_train im];
        end
    end
end 
end

