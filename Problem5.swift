import Foundation

/*
cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first and last element of that pair. 
car(cons(3, 4)) returns 3, and cdr(cons(3, 4)) returns 4.
def cons(a, b):
    def pair(f):
        return f(a, b)
    return pair
*/

func cons(_ a: Int, _ b: Int) -> (Int, Int) {
    return (a, b)
}

func car(_ num: (Int, Int)) -> Int {
    let (first, _) = num
    return first
}

func cdr(_ num: (Int, Int)) -> Int {
    let (_, second) = num 
    return second
}

print(cdr(cons(3,4)))