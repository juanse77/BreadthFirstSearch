function opened_list = extractNode(opened_list, idx)

    opened_list = [opened_list(1:idx-1) opened_list(idx+1:end)];

end