function [occupied] = isOccupied(occupied_cells, x, y)

    for i = 1:length(occupied_cells)

        if x == occupied_cells(i).x ... 
                && y == occupied_cells(i).y
            occupied = true;
            return;
        end
    end

    occupied = false;

end