%% Sanjidah Wahid: Section P
%% Computer Project #7

A = [0 1 0;-6 -0.5 1;0 0 -20];
B = [0;0;10]; 
C = [1 0 0]; 
D = 0;
sys = ss(A,B,C,0);

%% Part A
zeta = 0.8; 
wn = 3;
rr = -zeta*wn;
im = wn*sqrt(1-zeta^2);
% finding desired roots
p1 = rr+1i*im;
p2 = rr-1i*im;
p3 = -6;
% finding feedback controller gains
K = place(A,B,[p1 p2 p3])% feedback poles by place command
sys_cl = ss(A-B*K,B,C,0);

%% Part B
t = 0:0.01:10;
x0 = [1 0 0];
[y,t,x] = initial(sys,x0,t);
plot(t,y)
grid;
hold
[y_cl,t,x] = initial(sys_cl,x0,t);
plot(t,y_cl,'--');
legend('Open-loop','Closed-loop');
xlabel('Time (sec)')
ylabel('Amplitude')