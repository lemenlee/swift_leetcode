//: Playground - noun: a place where people can play

import UIKit

//Two Sum
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    var dicts = [Int: Int]()
    for (i, j) in nums.enumerated() {
        if let v = dicts[target - j], i != v {
            result = [v, i]
            return result
        }
        dicts[j] = i
    }
    return result
}

twoSum([2, 7, 11, 15], 9)


//Remove Duplicates from Sorted Array
func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var j = 0
    for i in 1..<nums.count {
        if nums[j] != nums[i] {
            j += 1
            nums[j] = nums[i]
        }
    }
    j += 1
    return j
}


//Remove Element
func removeElement(_ nums: inout[Int], _ val: [Int]) -> Int {
    var j = 0
    for i in 0..<nums.count {
        if nums[j] != nums[i] {
            nums[j] = nums[i]
            j += 1
        }
    }
    return j
}


//Search Insert Position

func searchInsert(_ nums: [Int], _ val: Int) -> Int {
    var low = 0, high = nums.count - 1
    while low <= high {
        let mid = (low + high) / 2
        if nums[mid] < val {
            low = mid + 1
        }else if nums[mid] > val {
            high = mid - 1
            
        }else {
            return mid
        }
    }
    return low
}


//Maximum Subarray
func maxSubArray(_ nums: [Int]) -> Int {
    var sofar = nums[0], sohigh = 0
    for i in 0..<nums.count {
        sofar = max(sofar + nums[i], nums[i])
        sohigh = max(sofar, sohigh)
    }
    return sohigh
}
maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4])


//Plus One
func plusOne(_ digits: [Int]) -> [Int] {
    var digitArray = digits
    for (i, j) in digitArray.enumerated().reversed() {
        if  j < 9 {
            digitArray[i] += 1
            return digitArray
        }else {
            digitArray[i] = 0
            if i - 1 < 0{
                digitArray.insert(1, at: 0)
            }
        }
        
    }
    return digitArray
}
plusOne([1, 0, 0, 2])


//Merge Sorted Array
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var length = m + n
    var a = m
    var b = n
    while b > 0 {
        length -= 1
        if a == 0 || nums1[a - 1] < nums2[b - 1] {
            b -= 1
            nums1[length] = nums2[b]
        }else {
            a -= 1
            nums1[length] = nums1[a]
        }
        
    }
}

var mergeArray = [2, 5, 8, 9]
merge(&mergeArray, 2, [3, 6], 2)

print(mergeArray)


//Pascal's Triangle
func generate(_ numRows: Int) -> [[Int]] {
    var arraySum = [[Int]]()
    var array = [Int]()
    
    for i in 0..<numRows {
        array.insert(1, at: 0)
        print(array)
        if array.count > 2 {
            for j in 1..<(array.count - 1) {
//                array.insert(array[j] + array[j + 1], at: j)
                array[j] = array[j] + array[j + 1]
            }
        }
        
        
        arraySum.append(Array(array))
    }
    return arraySum
}

generate(6)





