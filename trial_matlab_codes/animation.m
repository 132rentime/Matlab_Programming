theta = linspace(0,2*pi,1000);
h = animatedline();
axis([0,2*pi,-1,1])

for t = theta
    addpoints(h,t,sin(t));
    drawnow expose;
end 