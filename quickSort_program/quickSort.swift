import Foundation
//quick sort
var arr: [Int] = []
var array2 = [2000, 5000, 15000]
var times: [Double] = []

for t in 0..<array2.count{
for _  in 0..<array2[t]{
  let n = Int.random(in: 1...19999)
  arr.append(n)
}
let start = DispatchTime.now() 
for i in 1..<arr.count {
    let key = arr[i]
    var j = i - 1
    
    while j >= 0 && arr[j] > key {
      arr[j+1] = arr[j]
      j -= 1
    }
    
    arr[j+1] = key
}
print("WAIT...")

let end = DispatchTime.now() 
let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
let timeInterval = Double(nanoTime)/1000000
//print(arr)
times.append(timeInterval)
}

print("TIMPI DE EXECUTIE (ms) CU BUBBLE SORT")
var i = 0
for x in times{
    print(array2[i], " elemente: ", x)
    i += 1
}
