__kernel void test(__global const float* a, __global const float* b, __global float* result, const int M, const int N, const int P)
{
    int idx = get_global_id(0);
    int k = 0,temp;
    int i = idx / P;
    int j = idx % P;  
    for( k = 0; k < N; k++) 
        temp += a[ i*N + k ] * b[ k*P + j ];
    result[idx] = temp;

}
