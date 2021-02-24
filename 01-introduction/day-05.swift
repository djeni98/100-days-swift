// Day 5
func printHello(name: String) {
    print("Hello, \(name).")
}

printHello(name: "Ana")
print()

func sayHello(to name: String) {
    print("Hello, \(name).")
}
sayHello(to: "Ben")
print()

func square(_ number: Int) -> Int {
    return number * number
}

print(square(8))
print()

func greetAll(_ names: String..., nicely: Bool = true) {
    for name in names {
        if nicely {
            print("Hello, \(name).")
        } else {
          print("Hey \(name).")  
        }
    }
}

greetAll("Carl", "Dennis")
greetAll("Ed", "Gus", nicely: false)
print()

enum OptionError: Error {
    case non_positive
}

func checkOption(_ option: Int) throws -> Bool {
    if option < 0 {
        throw OptionError.non_positive
    }
    
    return true
}

var a = false;
var b = false;
do {
    try a = checkOption(1)
    try b = checkOption(-1)
} catch {
    print("Invalid option:", !a ? "a" : "b")
}
print()

func changePrice(_ price: inout Double) {
    price = 50.0
}

var price = 1.0
print(price)
changePrice(&price)
print(price)
