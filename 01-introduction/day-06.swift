// Day 6
let driving = {
    print("I'm driving in my car")
}

driving()
print()

let sum = { (_ numbers: Int...) -> Int in
    var acc = 0
    for number in numbers {
        acc += number
    }
    return acc
}

print(sum(1, 2, 3))
print()

func travel(_ action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(driving)
print()

travel() {
    print("I'm driving in my car - 1")
}
print()

travel {
    print("I'm driving in my car - 2")
}
