%System of Equations - Finding the equation of a parabola
%Ask user for 3 sets of (x,y) coordinates
points = input("Enter 3 points as [x1 y1; x2 y2; x3 y3]: ");
x = points(:,1);
y = points(:,2);
%Solve the equations
A = [x(1)^2 x(1) 1;
   x(2)^2 x(2) 1; 
   x(3)^2 x(3) 1];
b = [y(1); 
   y(2);
   y(3)];
coeff =A \ b; %Solvefora,b,c
a = coeff(1);
b_ = coeff(2);
c = coeff(3);
