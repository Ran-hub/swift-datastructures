//
//  MergeSort.swift
func merge(_ arr: inout [Int],_ temp: inout [Int],_ leftStart: Int, _ rightEnd: Int){
    let leftEnd = (leftStart+rightEnd)/2
    let rightStart = leftEnd + 1
    let size = rightEnd - leftStart + 1;
    
    var left = leftStart
    var right = rightStart
    var index = leftStart
    
    while (left <= leftEnd && right <= rightEnd){
        if (arr[left] > arr[right]){
            temp[index] = arr [right]
            right += 1
        }
        else {
            temp[index] = arr [left]
            left += 1
        }
        index += 1
    }
    while(left<=leftEnd){
        temp[index] = arr[left]
        left += 1
        index += 1
    }
    while(right<=rightEnd){
        temp[index] = arr[right]
        right += 1
        index += 1
    }
    arr = temp
}
func mergeSort(_ nums: inout [Int],_ temp: inout [Int], _ start: Int, _ end: Int){
    if (start >= end){return}
    let mid = (start + end )/2
    mergeSort(&nums,&temp,start,mid)
    mergeSort(&nums,&temp,mid+1, end)
    merge(&nums,&temp,start,end)
}

func mergeSort(_ nums: [Int]) -> [Int]{
    var numArr = nums
    var temp = nums
    mergeSort(&numArr, &temp, 0, nums.count - 1)
    return numArr
}
