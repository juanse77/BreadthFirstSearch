clear;
clc;

% Access to functions for Breadth First Search implementation of route planning  
currpath = path;
addpath('../AStar/');

resultAStar = [];
for n = 15:55
    map_name = sprintf("../Maps/map_%dx%d.mat", n, n);
    load(map_name);

    [count, target_flag] = countStepsFromCorner2Corner(grid, n);
    resultAStar = [resultAStar; n, count];
    fprintf("n=%d\tcount=%d\n", n, count);
end

path(currpath);

plot(resultAStar(:, 1), resultAStar(:, 2))
