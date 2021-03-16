function list = extractNode(list, idx)

    list = [list(1:idx-1) list(idx+1:end)];

end