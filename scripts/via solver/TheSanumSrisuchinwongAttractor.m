% Sanum, W., & Srisuchinwong, B. (2012). Highly Complex Chaotic System with Piecewise Linear Nonlinearity and Compound Structures. Journal of Computers, 7(4). https://doi.org/10.4304/jcp.7.4.1041-1047

clear
close
clc

a = 60;

fun = @(t, x) [x(2) - x(1);
                - x(3) * tanh(x(1));
                - a + x(1) * x(2) + abs(x(2))];

incond = [1 1 1];
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
view([-136 24])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Sanum---Srisuchinwong Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Sanum_Srisuchinwong_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Sanum_Srisuchinwong_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Sanum_Srisuchinwong_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Sanum_Srisuchinwong_Attractor.svg", "-dsvg")
% save("workspace/TheSanumSrisuchinwongAttractor.mat")