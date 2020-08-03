//Program for RSA asymmetric cryptographic algorithm
//for demonstration values are relatively small compared to practical application
 
#include<stdio.h>
#include<math.h>

int exponentiation(long base, long exponent){
    if(exponent == 0){
        return 1;
    }
    if(exponent == 1){
        return base;
    }

    long t = exponentiation(base, (exponent/2));
    t = t * t;

    if(exponent % 2 == 0){
        return t;
    }
    else{
        return base * t;
    }
}
 
//to find gcd
int gcd(int a, int h)
{
    int temp;
    while(1)
    {
        temp = a%h;
        if(temp==0)
        return h;
        a = h;
        h = temp;
    }
}
 
int main()
{
    //2 random prime numbers
    long p = 3;
    long q = 7;
    long n=p*q;
    long count;
    long totient = (p-1)*(q-1);
 
    printf("test: %d\n", exponentiation(3,5));

    //public key
    //e stands for encrypt
    long e=2;
 
    //for checking co-prime which satisfies e>1
    while(e<totient){
    count = gcd(e,totient);
    if(count==1)
        break;
    else
        e++;
    }
 
    //private key
    //d stands for decrypt
    double dd;
    long d; 
    //k can be any arbitrary value
    long k = 2;
 
    //choosing d such that it satisfies d*e = 1 + k * totient
    dd = (1 + ((double)k*(double)totient))/(double)e;
    d = (long)dd;
    printf("dd: %lf\n", dd);
    printf("d: %ld\n", d);

    long msg = 12;
    long c = pow(msg,e);
    //long c = exponentiation(msg, e);
    long m = pow(c,d);
    //long m = exponentiation(c, d);
    c=fmod(c,n);
    m=fmod(m,n);
 
    printf("Message data = %ld",msg);
    printf("\np = %ld",p);
    printf("\nq = %ld",q);
    printf("\nn = pq = %ld",n);
    printf("\ntotient = %ld",totient);
    printf("\ne = %ld",e);
    printf("\nd = %ld",d);
    printf("\nEncrypted data = %ld",c);
    printf("\nOriginal Message Sent = %ld\n",m);
 
    return 0;
}