function [closed_list, target_flag] = runSearch(start, target, closed_list, x_lim, y_lim)
% La función runSearch implementa la búsqueda de ruta utilizando el
% algoritmo de búsqueda en anchura o Breadth-first search (BFS), partiendo
% de la posición start para llegar a la celda target.
% La función devulve actualizada la lista de celdas visitadas, closed_list,
% que incluye los obstáculos actualizada. También devuelve una vaiable
% booleana que indica si ha sido capaz de llegar al destino (target).

    opened_list = [start];
    target_flag = false;

    while 1
        
        %length(opened_list)
        if length(opened_list) > 0
            node = opened_list(1);
            
            if checkTarget(target, node)
                closed_list(end+1) = node;
                target_flag = true;
                return;
            end
            
        else
           return
        end
        
        for i = node.x-1:1:node.x+1
            
            if i < 0 || i > x_lim-1
                continue;
            end
            
            for j = node.y-1:1:node.y+1
                
                if j < 0 || j > y_lim-1
                   continue; 
                end
                
                if ~(i == node.x && j == node.y)

                    childNode = getNode(i, j, node.x, node.y, ...
                        distance(node.x, node.y, i, j) + node.fn);
                    
                    [finded, ~] = findInList(closed_list, childNode.x, childNode.y);
                    if ~finded

                        [finded, idx] = findInList(opened_list, childNode.x, childNode.y);
                        if ~finded 
                            opened_list(end+1) = childNode;
                            
                        elseif childNode.fn < opened_list(idx).fn
                            opened_list(idx).parent_x = childNode.parent_x;
                            opened_list(idx).parent_y = childNode.parent_y;
                            opened_list(idx).fn = childNode.fn;
                        end
                        
                    end         
                    
                end
                
            end
            
        end

        closed_list(end+1) = node;
        opened_list = opened_list(2:end);
    
    end
    
end