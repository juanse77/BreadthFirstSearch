function idx = findByCost(list, fn)

    idx = 1;
    
    while idx < length(list)+1
        
        aux_node = list(idx);
       
        if fn < aux_node.fn
           break;
        end
        
        idx = idx + 1;
        
    end
    
end