/**
 * Basic C program with command line arguments
 *
 * @author Yusuf Pisan
 * @date 7 Dec 2018
 */

#include <stdio.h>

int main(int argc, char* argv[]) {
  for (int i = 0; i < argc; ++i) {
    printf("%d. %s\n", i, argv[i]);
  }
  printf("Hello, World!\n");
  return 0;
}
