function [ vect, val, her] = decomp(mat, k )
%DECOMP Summary of this function goes here
%   Detailed explanation goes here
N = length(mat);

if k < N 
    [vect, val] = eigs(mat, k);
    her = [];
elseif k == N
    [vect, val] = eig(mat);
    her = (vect*vect'==eye(N));
end
    
        

end

