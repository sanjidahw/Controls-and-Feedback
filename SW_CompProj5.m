%% Sanjidah Wahid: Section P
%% Computer Project #5

close all
clear all
clc 
s=tf('s');

HG = 30*(s+1)*(s+2)/(s*(s+3)*(s+4))
Gain_Poles_Zeros = zpk(HG)
[z,gain] = zero(HG)
[phase] = margin(HG)
[Gm,Pm] = margin(HG)
margin(HG)