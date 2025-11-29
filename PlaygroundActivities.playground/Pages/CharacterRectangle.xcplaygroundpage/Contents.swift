import Foundation

func repChar(n: Int, ch: String) -> String
{
    var asteriskMaker = ""
    for i in 1...n
    {
        asteriskMaker += ch
    }
    return asteriskMaker
}

print(repChar(n: 5, ch: "#"))
func rectCharStroke(n: Int, ch: String = "*") -> String
{
    var asteriskMaker = ""
    if (n < 0)
    {
        return "Invalid Number!"
    }
    else if(n == 1)
    {
        return "*"
    }
    
    else if(n == 2)
    {
        return "** \n**"
    }
    else
    {
        asteriskMaker += "\(repChar(n: n, ch: ch))\n*"
        for i in 1..<n-1
        {
            asteriskMaker += " "
        }
        asteriskMaker += "*\n"
        asteriskMaker += "\(repChar(n:n, ch:ch))"
        
    }
    return asteriskMaker
}
print(rectCharStroke(n: 3))
