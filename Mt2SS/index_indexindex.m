function [m_index,n_index]=index_indexindex(m,n,i,j)

if(m<n)   
    [a,b,c,d]=abcd(i,j); 
    m_left=abcd_left(m,a,b,c,d);
    n_left=abcd_left(n,a,b,c,d);
    m_index=ceil(m_left/2);
    n_index=ceil(n_left/2);
    
else
    disp("error, in Mt2SS, index_time, m should be less than n");
end