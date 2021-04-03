function [x_lim, y_lim] = drawGrid(grid, to_graph)
% La función drawGrid devuelve los índices de la última fila y última
% columna del grid, que contiene la discretización del "mundo" en el que se
% encuentra el robot.
% El parámetro to_graph permite crear el plot en el que se visualizará el
% "mundo" en el que se mueve el robot
    
    if nargin < 2
        to_graph = true;
    end
    
    [nx, ny] = size(grid);

    x_lim = nx-1;
    y_lim = ny-1;

    if to_graph
        x = linspace(0, x_lim, nx);
        y = linspace(0, y_lim, nx);

        [X, Y] = meshgrid(x, y);

        MAX_X = max(x);
        MAX_Y = max(y);

        figure;
        plot(X, Y, Y, X, "color", "blue");

        xlim = [0, MAX_X];
        ylim = [0, MAX_Y];

        hold on;
        axis equal;
    end
    
end