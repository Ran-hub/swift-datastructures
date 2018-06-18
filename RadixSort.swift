//
//  RadixSort.swift


//countSOrt to base 10

func countSort(_ nums: [Int], _ exp: Int) -> [Int]{
    if nums == [] {return [] }
    var res = nums
    var index = Array.init(repeating: 0, count: 10)
    
    for i in res{
        index[(i/exp)%10] += 1
    }
    for j in 1...index.count-1{
        index[j] += index[j-1]
    }
    
    for val in stride(from: nums.count-1, through: 0, by: -1) {
        let ind = index[(nums[val]/exp)%10]
        res[ind-1] = nums[val]
        index[(nums[val]/exp)%10] -= 1
    }
    
    return res
}

//radixSort

func radixSort(_ nums: [Int]) -> [Int]{
    let max = nums.max()!
    var res = nums
    var exp = 1
    
    while (max/exp > 0){
        res = countSort(res,exp)
        print(res)
        exp *= 10
    }
    
    return res
}

