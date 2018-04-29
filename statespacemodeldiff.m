% state space model

D = zeros(7);
O = [ zeros(7); inv(M) ];
G = [ zeros(7) , eye(7) ; -M\K , -M\C ];
% L = [ eye(7,1) , zeros(7,6), zeros(7)];
L = [ eye(7) , zeros(7)];
t = 0:0.01:10;
% inp = 0.1*sin(3.3803*t);
tt = 0:0.01:2;
modinp = 0.01*sin(10*tt);
inp = [zeros(1,100) modinp zeros(1,700)];
   
u = [ zeros(1001,1) zeros(1001,1)  zeros(1001,1)  inp' inp' inp' inp' ];
state = ss(G,O,L,D);

