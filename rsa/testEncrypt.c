#include <stdio.h>
#include "rsa.h"
#include <string.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
  struct public_key_class pub[1];
  struct private_key_class priv[1];

  /*nomrally generated each time, we are using a static key for this benchmark
    so that power isn't used on key generation making this a fair comparison with
    the decryption test*/
  pub->modulus = 834600463;
  pub->exponent = 257;

  priv->modulus = 834600463;
  priv->exponent = 172103753;

  printf("Private Key:\n Modulus: %lld\n Exponent: %lld\n", (long long)priv->modulus, (long long) priv->exponent);
  printf("Public Key:\n Modulus: %lld\n Exponent: %lld\n", (long long)pub->modulus, (long long) pub->exponent);

  char message[] = "test decrypt";
  int i;

  printf("Original:\n");
  for(i=0; i < strlen(message); i++){
    printf("%c %lld\n", (char)message[i], (long long)message[i]);
  }

  long long *encrypted = rsa_encrypt(message, sizeof(message), pub);
  if (!encrypted){
    fprintf(stderr, "Error in encryption!\n");
    return 1;
  }
  printf("Encrypted:\n");
  for(i=0; i < strlen(message); i++){
    printf("%c %lld\n", (char)encrypted[i], (long long)encrypted[i]);
  }

  printf("\n");
  free(encrypted);
  return 0;
}
