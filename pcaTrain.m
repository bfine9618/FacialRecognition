function [ xPCA_train ] = pcaTrain(train, k, mu, sigma)
%PCATRAIN Summary of this function goes here
%   Detailed explanation goes here
[P,~] = decomp(sigma, k);
xPCA_train=P'*(train-repmat(mu,1,360));

end

