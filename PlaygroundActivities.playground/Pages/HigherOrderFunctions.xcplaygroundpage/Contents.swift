//: [Previous](@previous)

import Foundation

// Filter

func filteringList()
{
    let list = [5,8,12,3,36,102,12,60,7,17]
    let evenList = list.filter{listItem in listItem % 2 == 0}
    print(evenList)
}

func mapExample()
{
    let numbers = [5, 10 , 52, 373, 67]
    let squaredNumbers = numbers.map {$0 * $0}
    print(squaredNumbers)
}
func sortedExample()
{
    let valorantCharacters = ["Reyna", "Jett", "Phoenix", "Sova"]
    let sortedCharacters = valorantCharacters.sorted(by: <).map{$0.uppercased()}
    print(sortedCharacters)
}

filteringList()
mapExample()
sortedExample()
