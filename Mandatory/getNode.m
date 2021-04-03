function node = getNode(xval, yval, parent_xval, parent_yval, fn)
% La función getNode retorna una estructura (struct) Node con la
% que se define una celda y que contiene la siguiente información:
%   - Posición del nodo (x, y)
%   - Posición del padre, es decir, de la celda precedente
%   - Coste

    node.x = xval;
    node.y = yval;
    node.parent_x = parent_xval;
    node.parent_y = parent_yval;
    node.fn = fn;

end