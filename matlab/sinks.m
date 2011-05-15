function answer = sinks(x0,y0,n)
    answer = [];
    x = x0;
    y = y0;
    i = 1;
    j = 1;
    k = 1;
    m = n/2;
while (k<=2	)
    while (j<=m)
        while (i<=n)
            answer = [answer,[x;y]];
            y = y + 3^(1/2);
            i= i+1;
        end
        i = 1;
        j= j+1;
        y = y0;
        x = x + 3;
     end
    k=k+1; 
    i = 1;
    j = 1;
    x = x0 +1;
    y = y0+3^(1/2)/2;
end   
end