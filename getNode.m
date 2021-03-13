function node = getNode(xval, yval, parent_xval, parent_yval, fn)

    node.x = xval;
    node.y = yval;
    node.parent_x = parent_xval;
    node.parent_y = parent_yval;
    node.fn = fn;

end