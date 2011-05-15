function v = solution(n)
    v = [];
    u = mat(n)\vector(n);
    k = 1;
    for i = 0:n
        temp = [];
        for j = 0:n
            temp = [temp, u(k)];
            k = k + 1;
        end
        v = [v; temp];
    end
end
