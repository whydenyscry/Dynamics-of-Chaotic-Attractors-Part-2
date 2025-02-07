% Zhou, W., Wang, Z., Wu, M., Zheng, W., & Weng, J. (2015). Dynamics analysis and circuit implementation of a new three-dimensional chaotic system. Optik - International Journal for Light and Electron Optics, 126(7-8), 765–768. doi:10.1016/j.ijleo.2015.02.029 

clear
close
clc

load("TheZhouWangWuAttractor.mat")

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