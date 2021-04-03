function idx = findByCost(list, fn)
% La función findByCost el índice del primer nodo de la lista list cuyo
% coste es mayor o igual que fn, con el fin de poder insertar los nodos de
% forma ordenada de menor a mayor coste

    idx = 1;
    
    while idx < length(list)+1
        
        aux_node = list(idx);
       
        if fn < aux_node.fn
           break;
        end
        
        idx = idx + 1;
        
    end
    
end