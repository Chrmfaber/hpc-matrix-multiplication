
void matmult_mkn(int m, int n, int k, double ** __restricted A, double ** __restricted B, double ** __restricted C) {
  int c, d, e;

  for (d = 0; d < n; d++) {
    for (c = 0; c < m; c++) {
      C[c][d] = 0;
    }
  }

  for (c = 0; c < m; c++) {
    for (e = 0; e < k; e++) {
      for (d = 0; d < n; d++) {
        C[c][d] += A[c][e] * B[e][d];
      }
    }
  }
}
