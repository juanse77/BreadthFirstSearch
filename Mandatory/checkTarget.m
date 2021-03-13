function target_flag = checkTarget(target, node)
    target_flag = false;
    
    if target.x == node.x && target.y == node.y
        target_flag = true;
    end
end