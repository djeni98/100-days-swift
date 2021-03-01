// Day 10
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }

    func makeNoise() {
        print("Woof!")
    }
}

final class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }

    override func makeNoise() {
        print("Yip!")
    }
}

var bob = Dog(name: "Bob", breed: "Buldog")
var pip = Poodle(name: "Pip")

bob.makeNoise()
print()

pip.makeNoise()
print()

print(pip.name)
var ship = pip
ship.name = "Ship"
print(pip.name)
print()

class Person {
  var name = "Person"
  
  init() {
    print("\(name) is alive")
  }

  func sayHello() {
    print("Hello!")
  }

  deinit {
    print("\(name) died")
  }
}

for _ in 1...3 {
  print()
  let p = Person()
  p.sayHello()
}
