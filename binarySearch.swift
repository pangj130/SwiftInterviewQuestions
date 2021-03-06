func createList(_ list: [Int], _ count: Int) -> [Int] {
    var change = list
    if count == 0 {
        print(change.sorted())
        return change.sorted()
    }
    let add = Int.random(in: 0...1000)
    if list.contains(add) {
        return createList(change, count)
    }
    else {
        change.append(add)
        return createList(change, count - 1)
    }
}

func binarySearch(_ list: [Int], _ target: Int) -> Int {
    var left = 0
    var right = list.count - 1
    while left < right {
        let mid = (left + right) / 2
        if list[mid] < target {
            left = mid + 1
        }
        else if list[mid] > target {
            right = mid - 1
        }
        else {
            return mid
        }
    }
    return left 
}

print(binarySearch(createList([64], 100), 64))