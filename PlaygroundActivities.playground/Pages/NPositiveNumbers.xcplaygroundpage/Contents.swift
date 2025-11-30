//: [Previous](@previous)

import Foundation

let xs = (1...100).map{_ in Double.random(in: -10...10)}
var count = 0;
for x in xs where x >= 0
{
    count += 1
}
print("Number of positive values in our list is \(count)")

// -----------------------------------------
var countNum = 0.0
for y in 1...100
{
    let xs = (1...100).map{_ in Double.random(in: -10...10)}
    for x in xs where x >= 0
    {
        countNum += 1
    }
}

print(countNum / 100.0)
