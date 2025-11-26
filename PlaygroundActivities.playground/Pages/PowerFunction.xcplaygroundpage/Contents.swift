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
print(powerFunc(base: 5, power: 3)!)
print(powerFunc(base: 0, power: 7)!)
print(powerFunc(base: -17, power: 0)!)
print(powerFunc(base: 5, power: -3) as Any)
