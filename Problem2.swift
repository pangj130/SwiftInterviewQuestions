import Foundation

/*
Given an array of integers, return a new array such that each element at index i of the 
new array is the product of all the numbers in the original array except the one at i.
[1, 2, 3, 4, 5] -> [120, 60, 40, 30, 24]
[3, 2, 1] -> [2, 3, 6]
*/

func Solution(_ nums: [Int]) -> [Int] {
    var multiplied = [Int]()
    for _ in nums {
        multiplied.append(1)
    }
    for i in 0..<nums.count {
        for j in 0..<nums.count {
            if i != j {
                multiplied[i] *= nums[j]
            }
        }
    }
    return multiplied
}

print(Solution([3, 2, 1]))