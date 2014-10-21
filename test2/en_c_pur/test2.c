#include <stdio.h>
#include <stdlib.h>
#include <time.h>

long* initData(int);
void test2_suma(int, int);

int main(int argc, char *argv[])
{
    int numElements = 1000000;
    int numIter = 100;
    
    if (argc >= 2) { numElements = atoi(argv[1]); }
    if (argc >= 3) { numIter = atoi(argv[2]); }
    
    test2_suma(numIter, numElements);
    
    return 0;
}

void test2_suma(int numIter, int numElements)
{
    clock_t ckini = clock();
    
    long *data = initData(numElements);
    
    long accum = 0;
    for (int j=0 ; j<numIter ; j++)
    {
        long sum = 0;
        for (int i=0 ; i<numElements ; i++) 
        {
            sum += data[i];
        }
        accum += sum;
        accum = accum % 10000007;
    }
    
    free(data);
    
    clock_t ckend = clock();
    
    printf("Done, added %d elements %d times in %f secs, accum %ld\n",
           numElements, numIter, ((double)(ckend - ckini) / (double) CLOCKS_PER_SEC), accum);
}


long* initData(int size) 
{
    long *data = malloc(sizeof(long) * size);
    for (int i=0 ; i<size ; i++) { data[i] = i % 1000; }
    return data;
}
