function [ fig ] = face(k, mu, xPCA, sig)
%FACE Summary of this function goes here
%   Detailed explanation goes here
[P,~] = decomp(sig, k);

fig = P*xPCA;
fig = fig+repmat(mu,1,40);
fig = reshape(fig(:,1), 112, 92);


end

