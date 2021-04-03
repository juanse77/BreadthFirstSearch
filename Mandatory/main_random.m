clc;
clear;

load("map.mat");

grid = grid';

[x_lim, y_lim] = drawGrid(grid);

occupied_cells = drawMap(grid, x_lim, y_lim);
closed_list = occupied_cells;

start_cell = fixCell(occupied_cells, x_lim, y_lim, "yellow", true, true);
occupied_cells(end+1) = start_cell;

target_cell = fixCell(occupied_cells, x_lim, y_lim, "green", true, true);

pause(0.5);

[closed_list, target_flag] = runSearch(start_cell, target_cell, closed_list, x_lim, y_lim);

if target_flag
    path = calculatePath(closed_list, start_cell);
    drawPath(path);
else
    fprintf("Route not found\n");
end
