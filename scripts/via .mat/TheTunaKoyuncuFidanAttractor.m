% Tuna, M., Koyuncu, I., Fidan, C. B., & Pehlivan, I. (2015). Real time implementation of a novel chaotic generator on FPGA. 2015 23nd Signal Processing and Communications Applications Conference (SIU). doi:10.1109/siu.2015.7129921 

clear
close
clc

load("TheTunaKoyuncuFidanAttractor.mat");

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