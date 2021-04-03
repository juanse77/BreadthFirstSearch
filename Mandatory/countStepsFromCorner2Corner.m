function [count, target_flag] = countStepsFromCorner2Corner(grid, n)
% La función countStepsFromCorner2Corner lleva a cabo la planificación de 
% ruta de un agente desde una de las esquinas del "mundo" descrito por el
% parámetro grid hasta la esquina opuesta.
% La función devuelve el número de celdas que ha necesitado visitar hasta
% llegar al destino y si realmente ha llegado.

    grid = grid';
    
    [x_lim, y_lim] = drawGrid(grid, false);
    occupied_cells = drawMap(grid, false);
    closed_list = occupied_cells;

    start_cell = fixCell(occupied_cells, x_lim, y_lim, '', false, false, 1, 1);
    occupied_cells(end+1) = start_cell;
    
    target_cell = fixCell(occupied_cells, x_lim, y_lim, '', false, false, n-2, n-2);
    [closed_list, target_flag] = runSearch(start_cell, target_cell, closed_list, x_lim, y_lim);
    if target_flag
        count = size(closed_list, 2) - (size(occupied_cells, 2) - 1);
    else
        count = Inf;
        disp('No route found');
    end  
end

