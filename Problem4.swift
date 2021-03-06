import Foundation

/* 
Given an array of integers, find the first missing positive integer in linear time and constant space. 
In other words, find the lowest positive integer that does not exist in the array. 
The array can contain duplicates and negative numbers as well.

The input [3, 4, -1, 1] should give 2. 
The input [1, 2, 0] should give 3.
*/

func Solution(_ nums: [Int]) -> Int {
    let sorted = nums.sorted()
    for i in 0..<sorted.count - 1 {
        if sorted[i] + 1 != sorted[i + 1] && sorted[i] >= 0 {
            return sorted[i] + 1
        }
    }
    return sorted[sorted.count - 1] + 1
}

print(Solution([1, 2, 0]))
