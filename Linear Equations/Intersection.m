%Initialize symbols
syms x y z

%Our system of linear equations
eq1 = 3*x+2*y-z==1;
eq2 = 2*x-2*y+4*z==-2;
eq3 = -x+0.5*y-z==0;

%Converting polys to a matrix
[A,B] = equationsToMatrix([eq1,eq2,eq3],[x,y,z])

%Solve Ax=B for x. This is ans = inv(A)*B'
x = linsolve(A,B)

%Graph the planes and Point of intersection
fimplicit3(eq1)
hold on
fimplicit3(eq2)
fimplicit3(eq3)
plot3(1,-2,-2,'.','DisplayName',"Intersection",'MarkerSize',50,'MarkerEdgeColor','red')
title('Intersection of three planes in R3') 