function [finded_flag, idx] = findInList(list, x, y)
    finded_flag = false;
    idx = -1;
    
    for i = 1:length(list)
        if x == list(i).x && y == list(i).y
            finded_flag = true;
            idx = i;
            return;
        end
    end

end