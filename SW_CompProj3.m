%% Sanjidah Wahid: Section P
%% Computer Project #3
close all
clear all
s = tf('s');

K1 = 0.2
K2 = 0.16
K3 = 0.1
H1 = (150*K1) / (s^3 + 10*s^2 + 8*s + 150*K1)
sys1 = zpk(H1)
H2 = (150*K2) / (s^3 + 10*s^2 + 8*s + 150*K2)
sys2 = zpk(H2)
H3 = (150*K3) / (s^3 + 10*s^2 + 8*s + 150*K3)
sys3 = zpk(H3)

%a.) Step response for K = 0.2, 0.16, 0.1

stepplot(H1, '--b')
hold on;
stepplot(H2, '-r')
stepplot(H3, '-.m')
hold off;
grid on;

%b.) Add a legend to the figure.

legend('H1 at K=0.2', 'H2 at K=0.16', 'H3 at K=0.1')

%c.) Explain in words what happens to MPO as k increases

% We can see from the graph that as 'k' increases, Maximum Peak Overshoot (MPO) increases. 








