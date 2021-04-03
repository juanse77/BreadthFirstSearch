function drawPath(path)
% La función drawPath añade al plot la ruta encontrada por el algoritmo de
% búsqueda

    for i = length(path):-1:1
        vert_x = [path(i).x, path(i).x+1, path(i).x+1, path(i).x];
        vert_y = [path(i).y, path(i).y, path(i).y+1, path(i).y+1];
        
        patch(vert_x, vert_y, "magenta");
        pause(0.5);
    end
end