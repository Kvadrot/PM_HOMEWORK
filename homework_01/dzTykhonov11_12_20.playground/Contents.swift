//,--¬ ,---, ,--¬ ,---, __  ,__  • ,---, ,
//|__  |   | |      |  /  \ |__) | |   | |
//|    |---| |      |  |  | |  \ | |---| |
//|    |   | |___   |  \__/ |   \| |   | |__,

//func factorial(yourInt: Int) -> UInt64 {
//    var a: UInt64 = UInt64(yourInt)
//    var result: UInt64 = a
//    if a == 0 {
//        return 1
//    }
//    while a > 1 {
//        a -= 1
//        result *= a
//    }
//    return result
//}
//
//print(factorial(yourInt: 4))// <-- Change to start
//----------------------------------------------------

//,--¬ • ,--,  ,---, ,   , ,---, ,--¬ •
//|__  | |__/  |   | |\  | |   | |    |
//|    | |   \ |---| | \ | |---| |    |
//|    | |___/ |   | |  \| |   | |___ |

//func fibanaci(yourInt: Int) {
//    var n = yourInt
//
//    var fib1: UInt64 = 0
//    var fib2: UInt64 = 1
//    var index = 1
//    var fibSum: UInt64 = 0
//
//    while n - 1 >= 0 {
//
//        print("f\(index) = \(fibSum)")
//
//        fibSum = fib1 + fib2
//        fib1 = fib2
//        fib2 = fibSum
//
//        index += 1
//        n -= 1
//    }
//}
//
//fibanaci(yourInt: 3)// <-- Change to start
//--------------------------------------------------

//,--¬ • ,   , ,--¬   ,--,•
//|__  | |\  | |   \  |__/|
//|    | | \ | |    | |   |
//|    | |  \| |___/  |   |

//func find(num: Int) {
//    let n = Double.pi
//    let joke: String = String(n)
//    let i = num + 1
//    let index = joke.index(joke.startIndex, offsetBy: i)
//
//    print(joke[index])
//}
//
//find(num:2)// <-- Change to start
//----------------------------------------------------
