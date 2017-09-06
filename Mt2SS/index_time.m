function output=index_time(m,n,i,j)


if(m<n)   
    [a,b,c,d]=abcd(i,j);
    output=z_time(m,a,b,c,d)-z_time(n,a,b,c,d);
else
    disp("error, in Mt2SS, index_time, m should be less than n");
end


    function z=z_time(n,a,b,c,d)
        if (n<=a)
            z=1;
        elseif( (n>a) && (n<=b))
            z=0;
        elseif( (n>b) && (n<=c))
            z=1;
        elseif( (n>c) && (n<=d))
            z=0;
        else
            disp("error, in Mt2SS, index_time, nested_function");
        end
    end


end