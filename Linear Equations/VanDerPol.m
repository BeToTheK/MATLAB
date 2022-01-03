%Nonlinear 2nd order DiffEq. The Van Der Pol equation
%Two linear first order diffeq's seperated by pen and paper
f = @(t,Y) [Y(2);-0.1*(Y(1)^2-1)*Y(2)-Y(1)]

y1 = linspace(-6,6,24);
y2 = linspace(-5,5,24);


[x,y] = meshgrid(y1,y2);

u = zeros(size(x));
v = zeros(size(x));

t=0; 
for i = 1:numel(x)
    Yprime = f(t,[x(i); y(i)]);
    u(i) = Yprime(1);
    v(i) = Yprime(2);
end

quiver(x,y,u,v,'k');
xlabel('y_1')
ylabel('y_2')
title('Van Der Pol Equation with u=0.1')
axis tight equal;
hold on
for y20 = [5]
    [ts,ys] = ode45(f,[1,100],[-5;y20]);
    [ts1,ys1] = ode45(f,[1,100],[5;-5]);
    plot(ys(:,1),ys(:,2))
    plot(ys1(:,1),ys1(:,2))
end
hold off