function [closed_list, target_flag] = runSearch(start, target, closed_list, x_lim, y_lim)

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
                        distance(node.x, node.y, i, j) + node.fn, ...
                        distance(i, j, target.x, target.y));
                    
                    [finded, ~] = findInList(closed_list, childNode.x, childNode.y);
                    if ~finded

                        [finded, idx] = findInList(opened_list, childNode.x, childNode.y);
                        if ~finded 
                            opened_list = insertOrdered(opened_list, childNode);
                            
                        elseif childNode.fn < opened_list(idx).fn
                            
                            opened_list = extractNode(opened_list, idx);
                            opened_list = insertOrdered(opened_list, childNode);
                            
                        end
                        
                    end         
                    
                end
                
            end
            
        end

        closed_list(end+1) = node;
        opened_list = opened_list(2:end);
    
    end
    
end