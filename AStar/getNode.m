function node = getNode(xval, yval, parent_xval, parent_yval, g, h)

    node.x = xval;
    node.y = yval;
    node.parent_x = parent_xval;
    node.parent_y = parent_yval;
    node.g = g;
    node.h = h;
    node.fn = g + h;

end