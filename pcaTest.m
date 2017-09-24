function [ xpcaTest ] = pcaTest(test, k, mu, sigma )
%PCATEST Summary of this function goes here
%   Detailed explanation goes here
[P,~] = decomp(sigma, k);
xpcaTest=P'*(test-repmat(mu,1,40));

end