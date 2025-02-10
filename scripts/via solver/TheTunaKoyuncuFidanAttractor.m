% Tuna, M., Koyuncu, I., Fidan, C. B., & Pehlivan, I. (2015). Real time implementation of a novel chaotic generator on FPGA. 2015 23nd Signal Processing and Communications Applications Conference (SIU). doi:10.1109/siu.2015.7129921 

clear
close
clc

a = 1.3;
b = 4;

fun = @(t, x) [x(2) * (x(3) - a);
               x(2) * (x(3) - a) - x(1) * (x(3) + a) ;
               -x(2) * (a * x(1) - x(2)) - b * (x(3) - a)];

incond = [-1 0 1];
timeint = [0 1e3];

tau = 5e-4;

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
view([41.6 18.0])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Tuna---Koyuncu---Fidan Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Tuna_Koyuncu_Fidan_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Tuna_Koyuncu_Fidan_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Tuna_Koyuncu_Fidan_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Tuna_Koyuncu_Fidan_Attractor.svg", "-dsvg")
% save("workspace/TheTunaKoyuncuFidanAttractor.mat")