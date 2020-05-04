%% Sanjidah Wahid: Section P
%% Computer Project #1

F_s = tf(1, [1,1]);
G_s = tf(100, [1, 5, 100]);
C_s = tf([20 20 1200], [1 40 250 0]);
S_s = tf(10, [1 10]);

Y_s = C_s*G_s;
L_s = feedback(Y_s,S_s);

L_end = zpk(L_s);

CLTF = F_s*L_end

step(CLTF,6)