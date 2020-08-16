#include <stdio.h>
#include <stdlib.h>
int main() {
   printf("C: Boom-de-ah-da\n");
   fflush(stdout);  // The next program was printing first?!
   system("gcc hello_world.cpp -lstdc++ -o hello_world_cpp");
   system("hello_world_cpp");
   printf("C: Boom-de-ah-da!\n");
   return 0;
}
