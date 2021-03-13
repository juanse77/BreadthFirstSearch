function [occupied_cell] = fixCell(occupied_cells, x_lim, y_lim, color)
   
    while 1
        point = rand([1,2]) .* [x_lim, y_lim];
        point = floor(point);
        
        flag_start = 0;
        for i = 1:length(occupied_cells)
            
            if point(1) == occupied_cells(i).x ... 
                    && point(2) == occupied_cells(i).y ...
            
                flag_start = 1;
                break;
        
            end
        end
        
        if flag_start == 0
            break;
        end
        
    end
    
    vert_x = [point(1), point(1)+1, point(1)+1, point(1)];
    vert_y = [point(2), point(2), point(2)+1, point(2)+1];
    
    patch(vert_x, vert_y, color);

    occupied_cell = getNode(point(1), point(2), -1, -1, -1);
    
end
