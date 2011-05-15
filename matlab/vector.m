function v = vector(n)
    h = 1/n;
    v = [];
    for j = 0:n
        for i = 0:n
            if j == 0
                v = [v; g_x_0(j*h)];
            elseif j == n
                v = [v; g_x_1(j*h)];
            elseif (i == 0) && (j ~= n) && (j ~= 0)
                v = [v; g_0_y(j*h)];
            elseif (i == n) && (j ~= n) && (j ~= 0)
                v = [v; g_1_y(j*h)];
            else
                v = [v; f(i*h, j*h)];
            end
        end
    end
end