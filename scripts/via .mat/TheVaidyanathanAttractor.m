% Vaidyanathan, S. (2015). Analysis, properties and control of an eight-term 3-D chaotic system with an exponential nonlinearity. International Journal of Modelling, Identification and Control, 23(2), 164. doi:10.1504/ijmic.2015.068871 

clear
close
clc

load("TheVaidyanathanAttractor.mat")

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