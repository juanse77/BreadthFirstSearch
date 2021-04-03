function [occupied] = isOccupied(occupied_cells, x, y)
% La función isOccupied devuelve un valor booleano según si la celda en la
% posición (x, y) es parte de la lista de celdas ocupadas

    for i = 1:length(occupied_cells)

        if x == occupied_cells(i).x ... 
                && y == occupied_cells(i).y
            occupied = true;
            return;
        end
    end

    occupied = false;

end