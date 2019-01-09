
void
matmult_nmk(int m,int n,int k,double **A,double **B,double **C){
  int c,d,e;
  double sum=0;

  for (c = 0; c < n; c++) {
        for (d = 0; d < m; d++) {
          for (e = 0; e < k; e++) {
            sum += A[c][e]*B[e][d];
          }

          C[c][d] = sum;
          sum = 0;
        }
      }
}
