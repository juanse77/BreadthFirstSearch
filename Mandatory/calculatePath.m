function path = calculatePath(closed_list, start_cell)
    path = [closed_list(end)];
    
    while path(end).x ~= start_cell.x || path(end).y ~= start_cell.y
        [~, idx] = findInList(closed_list, path(end).parent_x, path(end).parent_y);
        path(end+1) = closed_list(idx);
    end    
    
end