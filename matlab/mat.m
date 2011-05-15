function M = mat(n)
    I = eye(n + 1);
    Z = zeros(n + 1);
    row = [];
    h = 1/n;            
    
    %B
    B = matrix(zeros(1,n+1), zeros(1, n+1), -4, -1, 0, n)/(6*h^2);
    
    %A
    A = matrix([6*h^2, zeros(1,n)], [zeros(1,n), 6*h^2], 20, -4, 0, n)/(6*h^2);
   
    %M
    first_line = I;
    for i = 1:n
        first_line = [first_line, Z];
    end
    
    last_line = [];
    for i = 1:n
        last_line = [last_line, Z];
    end
    M = matrix(first_line, [last_line, I], A, B, Z, n);
   
end
