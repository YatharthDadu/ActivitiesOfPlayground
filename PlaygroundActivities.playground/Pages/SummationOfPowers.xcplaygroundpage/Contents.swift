import Foundation

func powerFunc(base: Int, power: Int) -> Int?
{
    var num = 1;
    if (base != 0 && power != 0 && power > 0)
    {
        for i in 1...power
        {
            num *= base
        }
    }
    else if (base == 0)
    {
        return 0;
    }
    else if(power == 0)
    {
        return 1;
    }
    else
    {
        return nil;
    }
    return num
}

func sumPowers(n: Int, power: Int) -> Int?
{
    if(n<0 || power < 0)
    {
        return nil;
    }
    var sum = 0;
    for i in 1...n
    {
        sum += powerFunc(base: i, power: power)!
    }

    return sum;
}
print(sumPowers(n: 5, power: 2)!)
print(sumPowers(n: 7, power: 3)!)
