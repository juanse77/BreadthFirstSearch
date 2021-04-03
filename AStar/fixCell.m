function [occupied_cell] = fixCell(occupied_cells, x_lim, y_lim, color, to_graph, random_cell, x, y)
% La función fixCell "fija" un una celda del grid, elegida aleatoriamente o
% especificada por el usuario, según el valor del parámetro booleano
% random_cell. La función retorna una estructura (struct) Node con la
% siguiente información:
%   - Posición del nodo (x, y)
%   - Posición del padre, que en este caso tiene un valor inválido (-1)
%   - Coste, que en este caso tiene un valor inválido (-1)
% Si se especifica una posición coincidente con un obstáculo, la función
% genera un error.
% El parámetro to_graph permite añadir la celda que se "fija" al plot.

    if random_cell
        
        while 1
            point = rand([1,2]) .* [x_lim, y_lim];
            point = floor(point);

            if ~isOccupied(occupied_cells, point(1), point(2))
                break
            end
        end
        
    else
        if isOccupied(occupied_cells, x, y)
            error("La celda elegida está ocupada");
        end
        point(1) = x;
        point(2) = y;
    end
    
    if to_graph
        vert_x = [point(1), point(1)+1, point(1)+1, point(1)];
        vert_y = [point(2), point(2), point(2)+1, point(2)+1];

        patch(vert_x, vert_y, color);
    end
    
    occupied_cell = getNode(point(1), point(2), -1, -1, -1, -1);
    
end
