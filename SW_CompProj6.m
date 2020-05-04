%% Sanjidah Wahid: Section P
%% Computer Project #6

clear all;
clc;
numerator = 5;
denominator = [1 3];

%% t = 0s

figure(1)
TF_0 = tf(numerator,denominator,'InputDelay',0)
nyquist(TF_0)
title('T = 0s Nyquist Plot')
grid on;

%% t = 0.1s

figure(2)
TF_1 = tf(numerator,denominator,'InputDelay',0.1)
nyquist(TF_1)
title('T = 0.1s Nyquist Plot')
grid on;

%% t = 0.78s
figure(3)
TF_2 = tf(numerator,denominator,'InputDelay',0.78)
nyquist(TF_2)
title('T = 0.78s Nyquist Plot')
grid on;

%% Problem #2
% Which of the cases T=0, 0.1, 0.78 are stable and which are unstable? 
% For a closed-loop system to be stable, the total number of clockwise
% encirclements of the point -1+j0 by the Nyquist plot of the open-loop
% transfer function G(jw)H(jw) must equal the number of right-hand poles of
% G(s)H(s). In this case, there are no right-hand poles so P=0. 

% T = 0: No encirclement of 0+jw axis; N=0
%       P=N-Z
%       0=0-0
% Therefore, this system is stable.

% T = 0.1: No encirclement of 0+jw axis; N=0
%       P=N-Z
%       0=0-0
% Therefore, this system is stable, but less stable than the T=0 case.

% T = 0.78: For this case, there is encirclement of 0+jw axis; N = 2
%       P=N-Z
%       Z = 2
% Therefore, this system is unstable with two right-hand poles.