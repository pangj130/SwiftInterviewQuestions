import Foundation

/*
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
[10, 15, 3, 7], k of 17 -> return true 
*/

func Solution(_ nums: [Int], _ k: Int) -> Bool {
    let sortedNums = nums.sorted()
    var pointer1 = 0
    var pointer2 = nums.count - 1
    while pointer1 != pointer2 {
        if sortedNums[pointer1] + sortedNums[pointer2] == k {
            return true 
        }
        else if sortedNums[pointer1] + sortedNums[pointer2] > k {
            pointer2 -= 1
        }
        else {
            pointer1 += 1
        }
    }
    return false
}

print(Solution([10, 15, 3, 7], 17))