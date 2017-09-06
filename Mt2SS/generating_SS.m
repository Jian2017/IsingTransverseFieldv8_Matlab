function SS=generating_SS(Mt,M0,i,j)

% Mt and M0 should be 2L by 2L matrix
% the result SS is 4(i+j-1) by 4(i+j-1) matrix
% Pf(SS)=<ABAB>=<Xi(t) Xj(0) Xi(t) Xj(0)>

SS=zeros(4*(i+j-1));


L=size(Mt,1)/2;



for m=1:4*(i+j-1)
    for n=(m+1):4*(i+j-1)
        mn_time=index_time(m,n,i,j);
        [m_sign,n_sign]=index_signsign(m,n,i,j);
        [m_index,n_index]=index_indexindex(m,n,i,j);
        
        m_2L2L=m_index + (0.5-m_sign/2)*L;
        n_2L2L=n_index + (0.5-n_sign/2)*L;
        
        
        
        % mn_time only take three values: +1,-1,0
        if (mn_time>0.5)
            SS(m,n)=Mt(m_2L2L,n_2L2L);
        
        elseif (mn_time< -0.5)
            SS(m,n)=conj(Mt(m_2L2L,n_2L2L));
            
        else
            SS(m,n)=M0(m_2L2L,n_2L2L);
        end
 
        
    end
end


% Now, S is upper-trangle-matrix, with diagonal zero

% S.' returns the non-conjugate transpose of S
% S-S.' will return a skew-symmetric matrix

SS=SS-SS.';

end

