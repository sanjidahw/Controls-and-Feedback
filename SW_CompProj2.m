%% Sanjidah Wahid: Section P
%% Computer Project #2

sys=tf([8,18,50],[1,6,14,45]);
step(sys,12);
grid on;
title('Computer Project #2 Step Response')

