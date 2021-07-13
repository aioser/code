import Foundation

// 二分查找, O(log n)
func binary_search(items: [Int], search: Int) -> Int {
    let length = items.count
    guard length != 0 else {
        return -1
    }
    var low = 0
    var high = length - 1
    var mid: Int = 0
    while low <= high {
        mid = Int((low + high) / 2)
        if items[mid] == search {
            return mid
        }
        if items[mid] < search {
            low += 1
        }
        if items[mid] > search {
            high -= 1
        }
    }
    return -1
}
print("二分法查找:\(binary_search(items: [1], search: 6))")

// 分治二分查找
// MARK: TODO
func search_binary_factorial(list: [Int], value: Int, low: Int, high: Int) -> Int {
    return 0
}
// print("递归二分法查找:\(search_binary_factorial(list: [1], value: 2, low: 0, high: 0))")

// 递归
func factorial(max: Int) -> Int {
    if max == 0 {
        return 0
    }
    if max == 1 {
        return 1
    }
    return max * factorial(max: max - 1)
}
print("递归:\(factorial(max: 0))")

// 数组递归求和
func sum_factorial(list: [Int]) -> Int {
    if list.count == 1 || list.count == 0 {
        return list.first ?? 0
    }
    var tmp = list
    return tmp.removeFirst() + sum_factorial(list: tmp)
}
print("sum: \(sum_factorial(list: [2, 3, 4]))")

// 递归解决土地分配问题
func earth_factorial(width: Int, height: Int) -> Int {
    var left = 0
    if width > height {
        left = width % height
    } else {
        left = height % width
    }
    if left == 0 {
        return min(width, height)
    }
    return earth_factorial(width: left, height: min(width, height))
}
print("土地问题: \(earth_factorial(width: 1680, height: 640))")

// 快排
func sort_quick(list: [Int]) -> [Int] {
    if list.count < 2 {
        return list
    }
    let pivot = list.first!
    let lesser = list[1...].filter{ $0 <= pivot }
    let greater = list[1...].filter{ $0 > pivot }
    return sort_quick(list: lesser) + [pivot] + sort_quick(list: greater)
}
print("快排:\(sort_quick(list: [10, 0, 5, 7, 4]))")

