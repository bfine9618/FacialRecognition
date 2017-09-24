function [ proj ] = proj(img, mu, ef)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

proj = (img - mu)'*ef;

end

