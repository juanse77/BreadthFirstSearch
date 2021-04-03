function opened_list = insertOrdered(opened_list, node)
% La función insertOrdered inserta el nodo node en la lista opened_list
% manteniendo el orden de menor a mayor coste

    idx = findByCost(opened_list, node.fn);
    
    if idx == 1
        opened_list = [node opened_list];
    elseif idx == length(opened_list)+1
        opened_list = [opened_list node];
    else
        opened_list = [opened_list(1:idx-1) node opened_list(idx:end)];
    end

end