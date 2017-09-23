function Swk=hanF(Cnt) 
 



T=size(Cnt,1);
N=size(Cnt,2);
Cnt=Cnt-Cnt(1,N);       % this is the step, to subtract the background order, to get unbiased correlator
CCCCnt=zeros(2*T-1,2*N-1);

CCCCnt(T:2*T-1, N: 2*N-1 )=Cnt;
CCCCnt(T:2*T-1, 1: N-1   )=fliplr(Cnt(:,2:N));
CCCCnt(1: T-1 , N: 2*N-1 )=conj(flipud(Cnt(2:T,:)));
CCCCnt(1: T-1 , 1: N-1   )=conj(rot90(Cnt(2:T,2:N),2));

HN2=hanning(2*T-1)*hanning(2*N-1)';  % 2D Hanning
 
HNCCCCnt=CCCCnt.*HN2;

Swk=fft2(HNCCCCnt);
