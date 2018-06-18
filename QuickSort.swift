//
//  QuickSort.swift

func quickSort(_ nums: [Int]) -> [Int]{
    var res = nums
    quickSort(&res,0,res.count-1)
    return res
}

func quickSort(_ nums: inout [Int], _ start: Int, _ end: Int){
    if (start >= end){
        return
    }
    let pivot = nums[(start+end)/2]
    let part = partition(&nums, start,end,pivot)
    quickSort(&nums, start, part-1)
    quickSort(&nums, part, end)
    
}

func partition(_ nums: inout [Int],_ start: Int, _ end: Int, _ pivot: Int) -> Int{
    var left = start; var right = end
    while left <= right {
        
        while(nums[left] < pivot){
            left += 1
        }
        while(nums[right] > pivot){
            right -= 1
        }
        
        if (left <= right){
            swap(&nums, left, right)
            left += 1
            right -= 1
        }
    }
    return left
}

func swap(_ nums: inout [Int],_ left: Int, _ right: Int){
    let temp = nums[left]
    nums[left] = nums[right]
    nums[right] = temp
}

