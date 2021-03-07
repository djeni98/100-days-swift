// Day 11

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

let u = User(id: "id-user-01")
displayID(thing: u)
print()

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

extension NeedsTraining {
    func study() {
        print("Study")
    }
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

extension Int {
    func squared() -> Int {
        return self * self
    }

    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
print(number.squared())
print(number.isEven)
