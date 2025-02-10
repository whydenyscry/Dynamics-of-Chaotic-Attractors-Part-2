% Zhang, M., & Han, Q. (2016). Dynamic analysis of an autonomous chaotic system with cubic nonlinearity. Optik, 127(10), 4315–4319. doi:10.1016/j.ijleo.2016.01.142 

clear
close
clc

load("TheZhangHanAttractor.mat");

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