%% Sanjidah Wahid: Section P
%% Computer Project #4

close all
clear all
clc 

HG = zpk([-0.25],[0 -2 -6],[1])
axis('equal');
rlocus(HG)

[k,poles] = rlocfind(HG, -3.969)