% Este script ejecuta la planificación de ruta de un agente situado en el
% "mundo" descrito en el archivo "map.mat" a partir de un punto de inicio y
% un punto final, especificados por el usuario a través de la función
% fixCell.

clc;
clear;

load("map.mat");

grid = grid';

[x_lim, y_lim] = drawGrid(grid);

occupied_cells = drawMap(grid, x_lim, y_lim);
closed_list = occupied_cells;

start_cell = fixCell(occupied_cells, x_lim, y_lim, "yellow", true, false, 2, 2);
occupied_cells(end+1) = start_cell;

target_cell = fixCell(occupied_cells, x_lim, y_lim, "green", true, false, 29, 16);

pause(0.5);

[closed_list, target_flag] = runSearch(start_cell, target_cell, closed_list, x_lim, y_lim);

if target_flag
    path = calculatePath(closed_list, start_cell);
    drawPath(path);
else
    fprintf("Route not found\n");
end
