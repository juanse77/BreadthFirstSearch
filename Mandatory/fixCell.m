function [occupied_cell] = fixCell(occupied_cells, x_lim, y_lim, color, to_graph, random_cell, x, y)

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
    
    occupied_cell = getNode(point(1), point(2), -1, -1, -1);
    
end
