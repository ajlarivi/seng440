#include <stdio.h>
#include "rsa.h"
#include <string.h>
#include <stdlib.h>
#include <time.h>

int test(const char* message_pointer, int length){
  struct public_key_class pub[1];
  struct private_key_class priv[1];
  rsa_gen_keys(pub, priv, PRIME_SOURCE_FILE);

  printf("Private Key:\n Modulus: %lld\n Exponent: %lld\n", (long long)priv->modulus, (long long) priv->exponent);
  printf("Public Key:\n Modulus: %lld\n Exponent: %lld\n", (long long)pub->modulus, (long long) pub->exponent);

  char message[length+1];
  strcpy(message, message_pointer);
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

  char *decrypted = rsa_decrypt(encrypted, 8*sizeof(message), priv, pub);
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


int main(int argc, char **argv)
{
  srand(time(0));

  const char *messages[8];
  messages[0] = "a";
  messages[1] = "asdf";
  messages[2] = "test";
  messages[3] = "hello there";
  messages[4] = "this is a longer message";
  messages[5] = "there and back again";
  messages[6] = "#*($)# 098 ,.! testing";
  messages[7] = "The quick brown fox jumps over the lazy dog";

  int i;
  for(i=0; i < 8; i++){
    printf("TEST CASE %d\n", i+1);
    printf("==================================================\n");
    test(messages[i], strlen(messages[i]));
    printf("\n");
  }


}
