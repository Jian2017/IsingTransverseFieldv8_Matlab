function [m_sign,n_sign]=index_signsign(m,n,i,j)

if(m<n)   
    [a,b,c,d]=abcd(i,j); 
    m_left=abcd_left(m,a,b,c,d);
    n_left=abcd_left(n,a,b,c,d);
    m_sign=mod(m_left,2)*2-1;
    n_sign=mod(n_left,2)*2-1;
    
else
    disp("error, in Mt2SS, index_time, m should be less than n");
end