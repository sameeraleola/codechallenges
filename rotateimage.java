/*
 Java Solution
 From: https://www.youtube.com/watch?v=IdZlsG6P17w
  */

//  Turn the rows into columns
//  for (int i=0; i<N; i++ {
//      for (int j=i; j<N; j++ {
//         int temp = matrix[i][j];
//         matrix[i][j] = matrix[j][i];
//         matrix[j][i] = temp;
//      }
//  }
//   Rearrange the rows.  Filp the first and last values
//  for (int i=0; i<N; i++ {
//     for (int j=0; j<(N/2); j++ {
//         int temp = matrix[i][j];
//         matrix[i][j] = matrix[i][N-1-j];
//         matrix[i][N-1-j] = temp;
//     }
//  }

// Visit here: https://runestone.academy/runestone/books/published/java4python/Java4Python/loopsanditeration.html