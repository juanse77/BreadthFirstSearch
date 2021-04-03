function [finded_flag, idx] = findInList(list, x, y)
% La función findInList devuelve la posición de la celda en la
% posición (x, y) en la lista list.
% También devuelve si la celda ha sido encontrada en la lista list

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