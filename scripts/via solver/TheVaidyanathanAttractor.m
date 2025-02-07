% Vaidyanathan, S. (2015). Analysis, properties and control of an eight-term 3-D chaotic system with an exponential nonlinearity. International Journal of Modelling, Identification and Control, 23(2), 164. doi:10.1504/ijmic.2015.068871 

clear
close
clc

a = 11;
b = 40;
c = 0.4;
d = 9;

fun = @(t, x) [a * (x(2) - x(1)) + x(2) * x(3);
               b * x(1) - c * x(1) * x(3);
               exp(x(1) * x(2)) - d * x(3) + x(1) ^ 2];

incond = [0.5 2 1.8];
timeint = [0 2];

tau = 1e-6;

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
title('The Vaidyanathan Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Vaidyanathan_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Vaidyanathan_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Vaidyanathan_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Vaidyanathan_Attractor.svg", "-dsvg")
% save("workspace/TheVaidyanathanAttractor.mat")