#include <stdio.h>
#include "rsa.h"
#include <string.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
  struct public_key_class pub[1];
  struct private_key_class priv[1];

  pub->modulus = 834600463;
  pub->exponent = 257;
  //private key provided by sender
  priv->modulus = 834600463;
  priv->exponent = 172103753;



  printf("Private Key:\n Modulus: %lld\n Exponent: %lld\n", (long long)priv->modulus, (long long) priv->exponent);
  printf("Public Key:\n Modulus: %lld\n Exponent: %lld\n", (long long)pub->modulus, (long long) pub->exponent);


  char message[] = "test decrypt";
  long long *encrypted = malloc(sizeof(long long)*sizeof(message));

  //encryped data provided by sender
  encrypted[0] = 29726693;
  encrypted[1] = 617640602;
  encrypted[2] = 578074704;
  encrypted[3] = 29726693;
  encrypted[4] = 228506422;
  encrypted[5] = 110329244;
  encrypted[6] = 617640602;
  encrypted[7] = 40483209;
  encrypted[8] = 696941132;
  encrypted[9] = 540719795;
  encrypted[10] = 47424872;
  encrypted[11] = 29726693;
  int i;

  printf("Encrypted:\n");
  for(i=0; i < strlen(message); i++){
    printf("%c %lld\n", (char)encrypted[i], (long long)encrypted[i]);
  }

  char *decrypted = rsa_decrypt(encrypted, 8*sizeof(message), priv);
  if (!decrypted){
    fprintf(stderr, "Error in decryption!\n");
    return 1;
  }
  printf("Decrypted:\n");
  for(i=0; i < strlen(message); i++){
    printf("%c %lld\n", (char)decrypted[i], (long long)decrypted[i]);
  }

  printf("\n");
  free(encrypted);
  free(decrypted);
  return 0;
}
