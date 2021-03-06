import Foundation 

/*
Implement a job scheduler which takes in a function f and an integer n, and calls f after n milliseconds. 

1 mil = 1/1000 s 
*/

class function {
    func call() { print("Called") }
}

func Solution(_ f: function, _ n: Int) {
    DispatchQueue.main.asyncAfter(deadline: .now() + Double(n) / 1000.0) {
        f.call()
    }
}

Solution(function(), 3000)