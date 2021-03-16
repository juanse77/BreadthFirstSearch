function idx = findByCost(opened_list, fn)

    idx = 1;
    aux_node = opened_list(idx);
    
    while idx < length(opened_list) && fn > aux_node.fn
       idx = idx + 1;
       aux_node = opened_list(idx); 
    end
    
end