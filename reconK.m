function [ reconFace ] = reconK(mu, ef, k)
%RECONK Summary of this function goes here
%   Detailed explanation goes here

reconFace = (k*ef') + mu;


end

