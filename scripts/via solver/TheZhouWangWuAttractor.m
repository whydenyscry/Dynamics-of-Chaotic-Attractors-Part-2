% Zhou, W., Wang, Z., Wu, M., Zheng, W., & Weng, J. (2015). Dynamics analysis and circuit implementation of a new three-dimensional chaotic system. Optik - International Journal for Light and Electron Optics, 126(7-8), 765–768. doi:10.1016/j.ijleo.2015.02.029 

clear
close
clc

a = 14;
b = 3;
c = 1;

fun = @(t, x) [a * x(2);
                - x(3) * sign(x(1)) - c * x(2);
                b * x(1) ^ 2 - 1];

incond = [0.1 0.1 0.1];
timeint = [0 1000];

tau = 0.001;

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
view([35 20])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Zhou---Wang---Wu Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Zhou_Wang_Wu_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Zhou_Wang_Wu_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Zhou_Wang_Wu_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Zhou_Wang_Wu_Attractor.svg", "-dsvg")
% save("workspace/TheZhouWangWuAttractor.mat")