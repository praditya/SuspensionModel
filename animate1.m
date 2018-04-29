x = 0:0.05:4*pi;
y = sin(x);

curve = animatedline('Color','r','LineStyle','--','LineWidth',3);
set(gca,'XLim',[0 4*pi],'YLim', [-1 1]); 
grid on;
legend('Animated Sine Curve');
for i = 1:length(x)
    addpoints(curve,x(i),y(i));
    drawnow limitrate
    pause(0.01);
end    