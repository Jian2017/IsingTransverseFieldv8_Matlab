function S=generating_S(Mt,M0,i,j)


% ceil(x) return the ceiling


S=zeros(2*(i+j-1));

L=size(Mt,1)/2;

a=2*i-1;

for m=1:2*(i+j-1)
    for n=(m+1):2*(i+j-1)
        
        if ( n <= a )
            S(m,n)=M0(ceil(m/2)+L*rem(m+1,2) , ceil(n/2)+L*rem(n+1,2)  );
            
        elseif( (m<=a) && (a<n) )
            n=n-a;
            S(m,n+a)=Mt(ceil(m/2)+L*rem(m+1,2) , ceil(n/2)+L*rem(n+1,2)  );
            n=n+a;
            
            % here, S(m+a,n+a) spend me over a night time to debug.
            
        elseif(  a<m  )
            m=m-a;
            n=n-a;
            S(m+a,n+a)=M0(ceil(m/2)+L*rem(m+1,2) , ceil(n/2)+L*rem(n+1,2)  );
            n=n+a;
            m=m+a;
            
        else
            disp("error,generating_S ");
            
        end

    end
end

S=S-S.';

end