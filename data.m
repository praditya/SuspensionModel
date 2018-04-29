
% Rough Data
% mi = 40 kg
% m0 = 1000 kg
% ki = 6000 
% ci = 1000
% kt = 1,20,000

global c k m m0 I w a b  M C K M1 B Q kt
c = input('enter damping');
k = input('enter stiffness');
m = input('enter mass');
m0 = input('enter m0');
I = input('enter I matrix');
w = input('enter w');
a = input('enter a');
b = input('enter b');
kt = input('enter tire stiffness');
B = input('enter initial input matrix');
Q{1} = input('enter input function 1');
Q{2} = input('enter input function 2');
Q{3} = input('enter input function 3');
Q{4} = input('enter input function 4');
M1 = [ m0 I(2) I(1) m ];
M = diag(M1);
C = [ c(1) + c(2) + c(3)+ c(4) , (c(1)- c(2) + c(3)- c(4))*w , c(1)*a+ c(2)*a - c(3)*b - c(4)*b , -c(1),-c(2),-c(3),-c(4) ;  c(1)*w - c(2)*w + c(3)*w - c(4)*w , (c(1)+ c(2) + c(3)+ c(4))*(w^2) , c(1)*a*w - c(2)*a*w - c(3)*b*w + c(4)*b*w , -c(1)*w , c(2)*w , -c(3)*w , c(4)*w ; c(1)*a + c(2)*a - c(3)*b - c(4)*b , c(1)*w*a - c(2)*w*a - c(3)*w*b + c(4)*w*b , c(1)*a^2 + c(2)*a^2 + c(3)*b^2 + c(4)*b^2 , -c(1)*a , -c(2)*a , c(3)*b , c(4)*b ; -c(1) , -c(1)*w , -c(1)*a , c(1) , 0,0,0 ; -c(2) , c(2)*w , -c(2)*a ,0,c(2),0,0 ; -c(3) , -c(3)*w , c(3)*b ,0,0,c(3),0; -c(4) , c(4)*w , c(4)*b, 0,0,0,c(4) ];
K = [ k(1) + k(2) + k(3)+ k(4) , (k(1)- k(2) + k(3)- k(4))*w , k(1)*a+ k(2)*a - k(3)*b - k(4)*b , -k(1),-k(2),-k(3),-k(4) ;  k(1)*w - k(2)*w + k(3)*w - k(4)*w , (k(1)+ k(2) + k(3)+ k(4))*(w^2) , k(1)*a*w - k(2)*a*w - k(3)*b*w + k(4)*b*w , -k(1)*w , k(2)*w , -k(3)*w , k(4)*w ; k(1)*a + k(2)*a - k(3)*b - k(4)*b , k(1)*w*a - k(2)*w*a - k(3)*w*b + k(4)*w*b , k(1)*a^2 + k(2)*a^2 + k(3)*b^2 + k(4)*b^2 , -k(1)*a , -k(2)*a , k(3)*b , k(4)*b ; -k(1) , -k(1)*w , -k(1)*a , k(1)+kt , 0,0,0 ; -k(2) , k(2)*w , -k(2)*a ,0,k(2)+kt,0,0 ; -k(3) , -k(3)*w , k(3)*b ,0,0,k(3)+kt,0; -k(4) , k(4)*w , k(4)*b, 0,0,0,k(4)+kt ];




    
