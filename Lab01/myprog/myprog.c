#include <stdio.h>

int main() {
   // Print odd numbers between 1 and 1000
   printf("Odd numbers between 1 and 1000 are:\n");

   for (int i = 1; i <= 1000; i++)
   {
      if (i % 2 == 1)
      {
         printf("%d \n", i);
      }
   }
   
   return 0;
}
