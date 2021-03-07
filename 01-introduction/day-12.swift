// Day 12

var name: String? = nil

if let unwrapped = name {
  print("My name is \(unwrapped)")
} else {
  print("I don't know my name.")
}
print()

func greet(_ name: String?) {
  guard let unwrapped = name else {
    print("You didn't provide a name.")
    return
  }
  print("Hello, \(unwrapped)")
}
greet(name)
print()

let str = "5"
let num1 = Int(str)
let num2 = Int(str)!

print(num1 ?? 0) // Nil coalescing (It may be nil)
print(num2)
print()

var num3: Int! = nil
num3 = Int(str)!
print(num3 + 1)

let items = ["apple", "banana"]
print(items.first?.uppercased() ?? "--")
print()

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
print()

try! checkPassword("sekrit")
print("OK!")
print()

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

for pet in [Fish(), Dog(), Fish(), Dog()] {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
