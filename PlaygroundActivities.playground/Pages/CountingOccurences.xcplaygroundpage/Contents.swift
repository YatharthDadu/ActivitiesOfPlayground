import Foundation

func countOccurences(list: [Int], countMe:Int) -> (occurences: Int, msg:String)
{
    var count = 0;
    var msg = "";
    
    for i in 0..<list.count
    {
        if(list[i] == countMe)
        {
            count += 1;
        }
    }
    if(count == 1)
    {
        if(count > 0)
        {
            msg = "\(countMe) appears \(count) time on the list"
        }
    }
    if(count > 1)
    {
        msg = "\(countMe) appears \(count) times on the list"
    }
    if(count == 0)
    {
        msg = "\(countMe) is not on the list"
    }
    return(count, msg)
}
print(countOccurences(list: [1001,11,10,-3,11,-3], countMe: 0))
print(countOccurences(list: [0], countMe: 0))
