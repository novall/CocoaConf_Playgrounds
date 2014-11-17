// Playground - noun: a place where people can play

import Cocoa
import XCPlayground

// Algorithm Development Part 2 - XCPCaptureValue

var data = [40, 70, 35, 2]

// How to implement XCPCaptureValue:
func visualize<T>(data: [T], identifier: String)
{
    for i in data
    {
        XCPCaptureValue(identifier, i)
    }
}

// Call the visualize function to see the list pre-sort,
// mid-sort, and post-sort. This is in place of our for-loop
// as seen in 07_Algorithms.
visualize(data, "Pre-Sort")

for i in data
{
    i
}

// Insertion Sort Function
func insertionSort(){
    var x, y, key : Int
    
    for (x = 0; x < data.count; x++) {
 
        key = data[x]
        
        for (y = x; y > -1; y--) {
            
            if (key < data[y]) {
                
                data.removeAtIndex(y + 1)
                data.insert(key, atIndex: y)
            }
            
        }
        visualize(data, "Mid-Sort")
    }
    
    
}
insertionSort()

visualize(data, "Post-Sort")
