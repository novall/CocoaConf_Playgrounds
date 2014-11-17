// Playground - noun: a place where people can play

import Cocoa

// Algorithm Development - Insertion Sort

/*
var randomData = [Int]()

for i in 0...20 {
    randomData.append(Int(arc4random())%100)
}

randomData
*/

var data = [55, 82, 90, 46, 23, 51, 86, 44, 43, 58, 86, 85, 93, 89, 57, 49, 59, 98, 64, 86, 58]

for i in data
{
    i
}

//Rank items by comparing each key in the list.

func insertionSort() {
    
    var x, y, key : Int
    
    for (x = 0; x < data.count; x++)
    {
        //Set key to be evaluated (i.e. our data array at a given index).
        key = data[x]
        
        //Iterate backwards through the sorted portion
        for (y = x; y > -1; y--)
        {
            if (key < data[y])
            {
                // If the number is less than the value at a given index, remove item from original position
                data.removeAtIndex(y + 1)
                
                //Insert the number at the key position
                data.insert(key, atIndex: y)
            }
        }
        
    }
}

insertionSort()

for i in data
{
    i
}
