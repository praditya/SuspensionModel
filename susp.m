function X = susp(A)
global c k m m0 I t a b M C K M1
c = input('enter damping');
k = input('enter stiffness');
m = input('enter mass');
m0 = input('enter m0');
I = input('enter I matrix');
t = input('enter t');
a = input('enter a');
b = input('enter b');
M1 = [ m0 I(3) I(2) m ];
M = diag(M1);
C = [ c(1) + c(2) + c(3)+ c(4) , (c(1)- c(2) + c(3)- c(4))*t , c(1)*a+ c(2)*a - c(3)*b - c(4)*b , -c(1),-c(2),-c(3),-c(4) ;  c(1)*t - c(2)*t + c(3)*t - c(4)*t , (c(1)+ c(2) + c(3)+ c(4))*(t^2) , c(1)*a*t - c(2)*a*t - c(3)*b*t + c(4)*b*t , -c(1)*t , c(2)*t , -c(3)*t , c(4)*t ; c(1)*a + c(2)*a - c(3)*b - c(4)*b , c(1)*t*a - c(2)*t*a - c(3)*t*b + c(4)*t*b , c(1)*a^2 + c(2)*a^2 + c(3)*b^2 + c(4)*b^2 , -c(1)*a , -c(2)*a , c(3)*b , c(4)*b ; -c(1) , -c(1)*t , -c(1)*a , c(1) , 0,0,0 ; -c(2) , c(2)*t , -c(2)*a ,0,c(2),0,0 ; -c(3) , -c(3)*t , c(3)*b ,0,0,c(3),0; -c(4) , c(4)*t , c(4)*b, 0,0,0,c(4) ];
K = [ k(1) + k(2) + k(3)+ k(4) , (k(1)- k(2) + k(3)- k(4))*t , k(1)*a+ k(2)*a - k(3)*b - k(4)*b , -k(1),-k(2),-k(3),-k(4) ;  k(1)*t - k(2)*t + k(3)*t - k(4)*t , (k(1)+ k(2) + k(3)+ k(4))*(t^2) , k(1)*a*t - k(2)*a*t - k(3)*b*t + k(4)*b*t , -k(1)*t , k(2)*t , -k(3)*t , k(4)*t ; k(1)*a + k(2)*a - k(3)*b - k(4)*b , k(1)*t*a - k(2)*t*a - k(3)*t*b + k(4)*t*b , k(1)*a^2 + k(2)*a^2 + k(3)*b^2 + k(4)*b^2 , -k(1)*a , -k(2)*a , k(3)*b , k(4)*b ; -k(1) , -k(1)*t , -k(1)*a , 2*k(1) , 0,0,0 ; -k(2) , k(2)*t , -k(2)*a ,0,2*k(2),0,0 ; -k(3) , -k(3)*t , k(3)*b ,0,0,2*k(3),0; -k(4) , k(4)*t , k(4)*b, 0,0,0,2*k(4) ];
end

