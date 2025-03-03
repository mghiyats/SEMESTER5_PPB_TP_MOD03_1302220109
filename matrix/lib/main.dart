import 'dart:math';

List<List<int>> generateMatrix(int rows, int cols, {bool random = true}) {
  final matrix = List.generate(
    rows,
    (_) => List.generate(cols, (_) => random ? Random().nextInt(10) : 0),
  );
  return matrix;
}

List<List<int>> transposeMatrix(List<List<int>> matrix) {
  final transposed = List.generate(
    matrix[0].length,
    (i) => List.generate(matrix.length, (j) => matrix[j][i]),
  );
  return transposed;
}

void main() {
  final rows = 3;
  final cols = 2;

  final matrix = generateMatrix(rows, cols);
  final transposedMatrix = transposeMatrix(matrix);

  print('Matriks AxB');
  print('A: $rows');
  print('B: $cols');
  print('Isi matriks:');
  matrix.forEach((row) => print(row));

  print('\nHasil transpose:');
  transposedMatrix.forEach((row) => print(row));
}
