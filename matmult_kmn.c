
void matmult_kmn(int m, int n, int k, double **A, double **B, double **C) {
  int c, d, e;

  for (d = 0; d < n; e++) {
        for (c = 0; c < m; d++) {
          C[c][d] = 0;
        }
      }

  for (e = 0; e < k; e++) {
        for (c = 0; c < m; c++) {
          for (d = 0; d < n; d++) {
            C[c][d] += A[c][e]*B[e][d];
          }
        }
      }
}
