 function z=abcd_left(n,a,b,c,d)
        if (n<=a)
            z=n;
        elseif( (n>a) && (n<=b))
            z=n-a;
        elseif( (n>b) && (n<=c))
            z=n-b;
        elseif( (n>c) && (n<=d))
            z=n-c;
        else
            disp("error, m or n is greater than 4*(i+j-1)");
        end
    end