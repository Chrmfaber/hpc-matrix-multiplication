
#include <stdio.h>

#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y))

// void matmult_blk(int m, int n, int k, double **A, double **B, double **C,
//                  int bs) {
//   int i1, i2, j1, j2, e;
//
//   for (i1 = 0; i1 < m; i1 += bs) {
//     for (j1 = 0; j1 < n; j1 += bs) {
//       for (i2 = 0; i2 < MIN(m - i1, bs); i2++) {
//         for (j2 = 0; j2 < MIN(n - j1, bs); j2++) {
//           C[i1 + i2][j1 + j2] = 0;
//           for (e = 0; e < k; e++) {
//             C[i1 + i2][j1 + j2] += A[i1 + i2][e] * B[e][j1 + j2];
//           }
//         }
//       }
//     }
//   }
// }

void matmult_blk(int m, int n, int k, double **A, double **B, double **C,
                 int bs) {
  int i, i1, i2, j, j1, j2, e1, e2;
  // Initializing C with 0s
  for (i = 0; i < m; i++) {
    for (j = 0; j < n; j++) {
       C[i][j] = 0;
    }
  }

  for (i1 = 0; i1 < m; i1 += bs) {
    for (e1 = 0; e1 < k; e1 += bs) {
      for (j1 = 0; j1 < n; j1 += bs) {
        for (i2 = 0; i2 < MIN(m - i1, bs); i2++) {
	          for (e2 = 0; e2 < MIN(k - e1, bs); e2++) {
            for (j2 = 0; j2 < MIN(n - j1, bs); j2++) {
	       C[i1 + i2][j1 + j2] += A[i1 + i2][e1 + e2] * B[e1 + e2][j1 + j2];
	    }
	  }
	}
      }
    }
  }
}
