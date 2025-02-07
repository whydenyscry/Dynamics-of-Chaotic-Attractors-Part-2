% Kingni, S. T., Pham, V.-T., Jafari, S., Kol, G. R., & Woafo, P. (2016). Three-Dimensional Chaotic Autonomous System with a Circular Equilibrium: Analysis, Circuit Implementation and Its Fractional-Order Form. Circuits, Systems, and Signal Processing, 35(6), 1933–1948. doi:10.1007/s00034-016-0259-x 

clear
close
clc

a = 0.991;

fun = @(t, x) [x(3);
               x(3) ^ 3 + x(3) ^ 2 + 3 * x(1) * x(3);
               x(1) ^ 2 + x(2) ^ 2 - a ^ 2 - 4 * x(2) * x(3) ^ 2];

incond = [-3.14 -2.2 -6.91];
timeint = [0 100];

tau = 0.0001;

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
view([46.3 25.4])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Kingni---Pham---Jafari Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Kingni_Pham_Jafari_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Kingni_Pham_Jafari_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Kingni_Pham_Jafari_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Kingni_Pham_Jafari_Attractor.svg", "-dsvg")
% save("workspace/TheKingniPhamJafariAttractor.mat")