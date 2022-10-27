import Foundation
//bubble sort
var array1: [Int] = []
var array2 = [2000, 5000, 15000]
var times: [Double] = []


for t in 0..<array2.count{
for _  in 0..<array2[t]{
  let n = Int.random(in: 1...19999)
  array1.append(n)
}
let start = DispatchTime.now()
let last_position = array1.count - 1
var swap = true
while swap == true {
    swap = false
    for i in 0..<last_position {
        if array1[i] > array1[i + 1] {
            let temp = array1[i + 1]
            array1[i + 1] = array1[i]
            array1[i] = temp
            swap = true
        }
    }
}
print("WAIT...")

let end = DispatchTime.now() 
let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds // <<<<< Difference in nano seconds (UInt64)
let timeInterval = Double(nanoTime)/1000000
//print(array1)
times.append(timeInterval)
}

print("TIMPI DE EXECUTIE (ms) CU BUBBLE SORT")
var i = 0
for x in times{
    print(array2[i], " elemente: ", x)
    i += 1
}

