import Foundation

/*
There exists a staircase with N steps, and you can climb up either 1 or 2 steps at a time. 
Given N, write a function that returns the number of unique ways you can climb the staircase. 
The order of the steps matters.
*/

func Solution(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    if n == 1 {
        return 1
    }
    return Solution(n - 2) + Solution(n - 1)
}

print(Solution(3))
/*
3 -> (2, 1) -> ((1, 0), 0)
*/