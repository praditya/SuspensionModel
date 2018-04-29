function solve 

    n = 7;
    
    tspan = 0:0.1:10;
    x_init = [zeros(n,1); zeros(n,1)];
    
    [t,x] = ode45(@myeqn,tspan,x_init);
    plot(t,x(:,1)-x(:,4));
    
    legend('z0');
    xlabel('Time in seconds');
    ylabel('Displacements');
    %,x(:,1),t,x(:,2),t,x(:,3),t,x(:,4),t,x(:,4),t,x(:,5),t,x(:,6),t,x(:,7)
    %'z0','roll','pitch','z1','z2','z3','z4'

end