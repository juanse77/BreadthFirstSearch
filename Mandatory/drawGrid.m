function [x_lim, y_lim] = drawGrid(grid)

    [nx, ny] = size(grid);

    x_lim = nx-1;
    y_lim = ny-1;

    x = linspace(0, x_lim, nx);
    y = linspace(0, y_lim, nx);

    [X, Y] = meshgrid(x, y);

    MAX_X = max(x);
    MAX_Y = max(y);

    figure;
    plot(X, Y, Y, X, "color", "blue");

    xlim = [0, MAX_X];
    ylim = [0, MAX_Y];

    hold on;
    axis equal;

end