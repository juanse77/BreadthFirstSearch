function [occupied_cells] = drawMap(grid, xlim, ylim, to_graph)
% La función drawMap devuelve la lista de celdas de la rejilla que continen
% obstáculos.
% El parámetro to_graph permite visualizar en el plot los obstáculos que 
% contiene el "mundo".

    if nargin < 4
        to_graph = true;
    end
    
    [x, y] = find(grid);
    
    x = x - 1;
    y = y - 1;
    
    occupied_cells = [];
    
    for i = 1:length(x)
        occupied_cells(i).x = x(i);
        occupied_cells(i).y = y(i);
        occupied_cells(i).parent_x = -1;
        occupied_cells(i).parent_y = -1;
        occupied_cells(i).fn = Inf;        
        
        if to_graph && x(i) < xlim && y(i) < ylim
            
            vert_x = [x(i), x(i)+1, x(i)+1, x(i)];
            vert_y = [y(i), y(i), y(i)+1, y(i)+1];
        
            patch(vert_x, vert_y, "red");
        
        end
        
    end
    
end