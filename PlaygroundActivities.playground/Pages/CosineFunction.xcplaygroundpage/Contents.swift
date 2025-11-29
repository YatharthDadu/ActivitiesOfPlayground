import Foundation

func factorialFunction(n: Int) -> Double
{
    if n == 0
    {
        return 1
    }
    var result = 1.0
    for i in Int(1.0)...n
    {
        result *= Double(i)
    }
    
    return result
}

func myCosine(_ inputX: Double, threshold: Double = pow(10,-6)) -> Double
{
    var cosFunc = 1 - (pow(inputX,Double(2))/factorialFunction(n: 2))
    var n = 2;
    var loopCount = 0;
    var currentTerm = 1.0
    while currentTerm > abs(threshold)
    {
        currentTerm = pow(inputX, Double(n+2))/factorialFunction(n: n+2)
        if(loopCount % 2 == 0)
        {
            cosFunc += currentTerm
            n += 2
            loopCount += 1
        }
        else if (loopCount % 2 != 0)
        {
            cosFunc -= currentTerm
            n += 2
            loopCount += 1
        }
    }
    return cosFunc
}

let m = 18.0
for i in stride(from:0, to: m, by:1)
{
    let angle: Double = (2 * Double.pi * i) / m
    print(cos(angle))
    print(myCosine(angle))
    print("")
}
