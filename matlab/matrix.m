function M = matrix(first_line, last_line, A,B,Z, n)
    M = first_line;
    for i = 1:n-1
        row = [];
        for j = 1:i-1
            row = [Z, row];
        end
        row = [row, B, A, B];
        for j = 1:n-i-1
            row = [row, Z];
        end
        M = [M; row];
    end
    M = [M; last_line]
end

