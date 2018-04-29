function dxdt = myeqn(t,x)
        
        n = 7;
        
        global  M K C Q kt 
%         B = zeros(1,4);
%         for f = 1:4
%             B(f) = Q{f}(t);
%         end    
        
        A = kt*[ 0 0 0 0.01 0.01 0.01 0.01 ];
        
        x1 = zeros(n,1);
        x2 = zeros(n,1);
        dxdt_1 = zeros(n,1);
        dxdt_2 = zeros(n,1);
        dxdt = zeros(2*n,1);
        
        x1 = x(1:n);
        x2 = x(n+1:2*n);
        dxdt_1 = x2;
        dxdt_2 = M\(A' - K*x1 - C*x2);
        dxdt = [dxdt_1; dxdt_2];
       
        
end