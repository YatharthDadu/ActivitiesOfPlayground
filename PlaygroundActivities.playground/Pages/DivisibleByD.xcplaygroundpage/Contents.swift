//: [Previous](@previous)

import Foundation

func divisibleByD(number: Int, divisor: Int) -> String
{
    if(number % divisor == 0)
    {
        return "I am \(number) and I am divisible by \(divisor)"
    }
    return "I am \(number) and I am not divisible by \(divisor)"
}

print(divisibleByD(number: 22, divisor: 123))
print(divisibleByD(number: 22, divisor: 11))
print(divisibleByD(number: 11, divisor: 22))
print(divisibleByD(number: 43, divisor: 21))
print(divisibleByD(number: 17, divisor: 16))
print(divisibleByD(number: 6, divisor: 7))
print(divisibleByD(number: 6, divisor: 3))
print(divisibleByD(number: 12, divisor: 2))
print(divisibleByD(number: 5, divisor: 1))
