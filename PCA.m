function [ fig, xPCA ] = PCA(k, X, mu, sig)
%PCA Summary of this function goes here
%   Detailed explanation goes here

[P,~] = decomp(sig, k);
xPCA = proj(X, mu, P);
Xrecon = reconK(mu, xPCA, k);

numrows = 112;
numcols = 92;

fig = reshape(Xrecon, numrows, numcols);



end

