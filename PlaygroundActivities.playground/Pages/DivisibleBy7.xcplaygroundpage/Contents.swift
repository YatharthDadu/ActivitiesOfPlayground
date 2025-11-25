import Foundation

func divisibleBy7(number : Int) -> String  {
    if (number % 7 == 0)
    {
        return "I am \(number) and I am divisible by 7"
    }
    return "I am \(number) and I am not divisible by 7"
}
for i in 1...50
{
    print(divisibleBy7(number: i))
}





