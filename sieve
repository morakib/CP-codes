 
// sieve starts
bool mark[N+5];
vector<ll>primes;
void sieve(){
    memset(mark,true,sizeof(mark));
    mark[0]=0,mark[1]=0,mark[2]=1;
    for(ll i=4;i<=N;i+=2LL){
        mark[i]=0;
    }
    for(ll i=3;i*i<=N;i+=2LL){
        if(mark[i]){
            for(ll j=i*i;j<=N;j+=i){
                mark[j]=0;
            }
        }
    }primes.push_back(2);
    for(int i=3;i<=N;i+=2){
        if(mark[i]){
            primes.push_back(i);
        }
    }
}
// sieve ends
