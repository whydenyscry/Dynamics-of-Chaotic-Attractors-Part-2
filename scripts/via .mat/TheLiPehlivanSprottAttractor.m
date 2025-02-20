% Li, C., Pehli̇Van, İ., & Sprott, J. C. (2015). Amplitude-phase control of a novel chaotic attractor. TURKISH JOURNAL OF ELECTRICAL ENGINEERING & COMPUTER SCIENCES, 24, 1–11. https://doi.org/10.3906/elk-1301-55

clear
close
clc

load("TheLiPehlivanSprottAttractor.mat")

set(groot, "defaultAxesTickLabelInterpreter", "latex");
set(groot, "defaultTextInterpreter", "latex");
set(groot, "defaultLegendInterpreter", "latex");
set(groot, "defaultColorbarTickLabelInterpreter", "latex");

figure();
scatter3(xsol(:, 1), xsol(:, 2), xsol(:, 3), 4, 1:length(xsol(:, 1)), 'filled');
view([43.0 20.2])
colormap gray;
colorbar;
axis tight;
grid on;
box on;
xlabel('$x$', 'FontSize', 14);
ylabel('$y$', 'FontSize', 14);
zlabel('$z$', 'FontSize', 14);
title('The Li---Pehlivan--Sprott Attractor', 'FontSize', 15.5);

% exportgraphics(gcf, "images_png/The_Li_Pehli̇van_Sprott_Attractor.png", 'Resolution', 1200)
% exportgraphics(gcf, "images_pdf/The_Li_Pehli̇van_Sprott_Attractor.pdf", "ContentType", "vector")
% exportgraphics(gcf, "images_eps/The_Li_Pehli̇van_Sprott_Attractor.eps", "ContentType", "vector")
% print(gcf, "images_svg/The_Li_Pehli̇van_Sprott_Attractor.svg", "-dsvg")
% save("workspace/TheLiPehli̇vanSprottAttractor.mat")