function target_flag = checkTarget(target, node)
% La función checkTarget devuelve una varible booleana que indica si la
% celda node se corresponde con la celda de destino target

    target_flag = false;
    
    if target.x == node.x && target.y == node.y
        target_flag = true;
    end
end