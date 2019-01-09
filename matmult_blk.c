#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y))

void matmult_blk(int m, int n, int k, double **A, double **B, double **C,
                 int bs) {
  int i1, i2, j, e;
  double sum = 0;

  for (i1 = 0; i1 < m; i1 += bs) {
    for (j = 0; j < n; j++) {
      for (i2 = 0; i2 < MIN(m - i1, bs); i2++) {
        for (e = 0; e < k; e++) {
          sum += A[i2][e] * B[e][j];
        }

        C[i2][j] = sum;
        sum = 0;
      }
    }
  }
}
