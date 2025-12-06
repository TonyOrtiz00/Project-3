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
%Solve for a,b,c
coeff = A \ b; 
a = coeff(1);
b_ = coeff(2);
c = coeff(3);
%Display equation
fprintf("The parabola is: y=%.2fx^2+%.2fx+%.2f\n",a,b_,c);
%Graph parabola and points
x_plot=linspace(-10,10,400);
y_plot=a*x_plot.^2+b*x_plot+c;
plot(x_plot,y_plot,'LineWidth',2)
hold on
plot(x,y,'o','MarkerSize',5,'MarkerFaceColor','r')
grid on
title('Parabola from User Points')
xlabel('x')
ylabel('y')
hold off
