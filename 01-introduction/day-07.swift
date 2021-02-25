// Day 7
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car - 1"
}
print()


travel { place in
    return "I'm going to \(place) in my car - 2"
}
print()

func travel_with_speed(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel_with_speed {
    "I'm going to \($0) at \($1) miles per hour."
}
print()

func createFunction() -> () -> Void {
    var counter = 1
    return {
        print("This function was called \(counter) time(s).")
        counter += 1
    }
}
let myFunction = createFunction()
myFunction()
myFunction()
myFunction()
