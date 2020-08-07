# Leetcode-240-Search-a-2D-Matrix-II-

https://leetcode.com/problems/search-a-2d-matrix-ii/

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
