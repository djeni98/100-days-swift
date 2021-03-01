// Day 8
struct Person {
    var name: String
    var last_name: String
    
    var full_name: String {
        return "\(name) \(last_name)"
    }
}

var ana = Person(name: "Ana", last_name: "Banana")
print(ana.full_name)
print()

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
print()

struct Dog {
    var name: String
    
    func bark() {
        print("Woof")
    }
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var dog = Dog(name: "Bob")
dog.bark()
dog.makeAnonymous()
