//
//  Insertion&Selection_Sort.swift
//  
func insertionSort(_ nums: [Int]) -> [Int]{
    if nums == [] {return [] }
    var res = nums; var j = 0
    for i in 1..<res.count{
        let temp = res[i]
        j = i-1
        while(j >= 0){
            if (j>=0 && res[j]>temp){
                res[j+1] = res[j]
            }
            else{
                break
            }
            j -= 1
        }
        res[j+1] = temp
    }
    return res
}

func selectionSort(_ nums:[Int]) -> [Int]{
    var res = nums
    
    
    for i in 0..<res.count{
        var select = i
        var j = i
        while (j < res.count){
            if res[j] < res[select] {
                select = j
            }
            j += 1
        }
        let t = res[i]
        res[i] = res[select]
        res[select] = t
    }
    
    
    return res
}
print( selectionSort([5,3,1,4,2,1,2,3]) )
