import Foundation

func myLog(_ x: Double, threshold: Double = pow(10, -6)) -> Double {
    if x == 0
    {
        return -Double.infinity
    }
    if x < 0
    {
        return Double.nan
    }

    let u = x - 1
    var result = 0.0
    var term = u
    var n = 1.0

    while abs(term) >= threshold {
        result += term
        term = -term * u * (n / (n + 1))
        n += 1
    }

    return result
}

func compareLogarithms(x: Double) {
    print("log(\(x)) = \(log(x))")
    print("myLog(\(x)) = \(myLog(x))")
    print("")
}

// Test values
for x in stride(from: -10.0, to: 0.0, by: 1.0) {
    compareLogarithms(x: exp(x))
}

for x in [0.0001, 0.01, 0.73, 1] {
    compareLogarithms(x: x)
}
