% Este script ejecuta la planificación de ruta de un agente a través de un
% "mundo" que ha sido discretizado con diferentes tamaños de grid con el
% fin de analizar cómo varía el rendimiento del algoritmo de búsqueda
% en anchura o Breadth-first search (BFS).
% Las rejillas empleadas para discretizar el "mundo" tienen tamaños que van
% desde 15x15 hasta 55x55, utilizando simpre rejillas cuadradas.
% Para analizar el rendimiento, se utiliza como métrica el número de saltos
% empleados en la búsqueda de la ruta.

clear;
clc;

resultMandatory = [];
for n = 15:55
    map_name = sprintf("../Maps/map_%dx%d.mat", n, n);
    load(map_name);

    [count, target_flag] = countStepsFromCorner2Corner(grid, n);
    resultMandatory = [resultMandatory; n, count];
    fprintf("n=%d\tcount=%d\n", n, count);
end

plot(resultMandatory(:, 1), resultMandatory(:, 2))
