function list = extractNode(list, idx)
% Function extractNode extracts node in position idx from list

    list = [list(1:idx-1) list(idx+1:end)];

end