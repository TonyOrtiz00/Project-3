% Create time and velocity arrays
t = 0:1:12;
vel = [0 1 1.8 2.4 2.6 2.7 2.6 2.2 2 1.9 1.8 1.8 1.8];
% Determine the acceleration function
n = length(t);
acc = zeros(size(vel));
acc(1) = (vel(2)-vel(1))/1;
acc(2:n-1) = (vel(3:n)-vel(1:n-2))/2;
% Determine the position function
pos = cumtrapz(t,vel);
% Create three separate plots: acceleration, velocity, and position
subplot(3,1,1)
plot(t,acc)
grid on
title('Acceleration Graph')
xlabel('Time(s)')
ylabel('Acceleration(m/s^2)')
subplot(3,1,2)
plot(t,vel)
grid on
title('Velocity Graph')
xlabel('Time(s)')
ylabel('Velocity(m/s)')
subplot(3,1,3)
plot(t,pos)
grid on
title('Position Graph')
xlabel('Time(s)')
ylabel('Position(m)')
hold on
xlim([0 12])