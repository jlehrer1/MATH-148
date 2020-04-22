phi = @(x) tan(x);
sp = linspace(3.9, 5.1, 10000);
hold on

dphi_points = [];
phi_points = phi(sp);

for i=1:length(sp)
    dphi_points = [dphi_points, aitken(phi, sp(i))];
end

hold on
ylim([-10, 10])
plot(sp, phi_points);
plot(sp, dphi_points);
hold off

N = 100;
x0=4.5;
alpha_phi = [x0, zeros(1, N)];
alpha_dphi = [x0, zeros(1, N)];

for j=1:N-1
    alpha_phi(j+1) = phi(j);
    alpha_dphi(j+1) = aitken(phi, j);
end

disp(alpha_phi);
disp(alpha_dphi);

function [rx] = aitken(phi, x)
    if phi(x) ~= x
        rx = (x*phi(phi(x))-(phi(x))^2)/(phi(phi(x))-2*phi(x)+x);
    else
        rx = x;
    end
end