
/*
Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

Integers in each row are sorted in ascending from left to right.
Integers in each column are sorted in ascending from top to bottom.
Example:

Consider the following matrix:

[
  [1,   4,  7, 11, 15],
  [2,   5,  8, 12, 19],
  [3,   6,  9, 16, 22],
  [10, 13, 14, 17, 24],
  [18, 21, 23, 26, 30]
]

Given target = 5, return true.

Given target = 20, return false.

 n = size of matrix
 m = length of each array in matrix
time complexity -> m + n


Steps
- start from the bottom row, look at first index
  - if it's greater than the target, then move up and index (i -= 1)
  * if it's smaller than the target, then look into that row
  - if number == target { }
  * if number in row is greater, then decrement index, (move up)

[
  [1,   4,  6, 11, 15],
  [2,   5,  8, 12, 19],
  [3,   6,  9, 16, 22],
  [10, 13, 14, 17, 24],
  [18, 21, 23, 26, 30]
]
Given target = 7, return false.

*/


func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    var rowIndex = matrix.count - 1
    var columnIndex = 0
    while rowIndex >= 0 && columnIndex <= matrix[0].count - 1 {
        if matrix[rowIndex][columnIndex] > target {
            rowIndex -= 1
        } else if matrix[rowIndex][columnIndex] < target {
            columnIndex += 1
        } else if matrix[rowIndex][columnIndex] == target {
            return true
        }
    }
    return false
}

let matrix1 = [
    [1,   4,  7, 11, 15],
    [2,   5,  8, 12, 19],
    [3,   6,  9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30]
]

print(searchMatrix(matrix1, 25))
