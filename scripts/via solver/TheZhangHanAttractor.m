% Zhang, M., & Han, Q. (2016). Dynamic analysis of an autonomous chaotic system with cubic nonlinearity. Optik, 127(10), 4315–4319. doi:10.1016/j.ijleo.2016.01.142 

clear
close
clc

a = 2;
b = 10;
c = 6;
d = 3;
e = 3;
f = 1;

fun = @(t, x) [- a * x(1) + b * x(2) * x(3);
               - c * x(2) ^ 3 + d * x(1) * x(3);
               e * x(3) - f * x(1) * x(2)];

incond = [0.1 0.001 0.2];
timeint = [0 1e3];

tau = 1e-3;

start_ODE = datetime("now");
[t, xsol] = odeCRK4(fun, timeint, tau, incond);
end_ODE = datetime("now");

time_RKmethod = end_ODE - start_ODE;
time_RKmethod.Format = "hh:mm:ss.SSS";

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([133.8 17.1])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Zhang---Han Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Zhang_Han_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Zhang_Han_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Zhang_Han_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Zhang_Han_Attractor.svg", "-dsvg")
% save("workspace/TheZhangHanAttractor.mat")