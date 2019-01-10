#if defined(__MACH__) && defined(__APPLE__)
#include <Accelerate/Accelerate.h>
#else
#include <cblas.h>
#endif

void
matmult_lib(int m,int n,int k,double **A,double **B,double **C){
  double alpha = 1.0, beta = 0.0;

  cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans,
                  m, n, k, alpha, A[0], k, B[0], n, beta, C[0], n);

}
