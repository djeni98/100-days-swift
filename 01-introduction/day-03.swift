// Day 3
let sum = 10 + 3
let difference = 10 - 3
let product = 10 * 3
let division = 10 / 3
let division_double = 10.0 / 3
let remainder = 10 % 3

print(
    sum, difference, product,
    division,  division_double, remainder
)
print()

let join_string = "join" + "_" + "string"
let join_array = [1, 2] + [10, 20]
print(join_string)
print(join_array)
print()

var str = "str"
str += " str"
print(str)
print()

print(10 == 10.0, 10 != 10.0)
print("aaaabb" < "aaabaa")
print()

let age = 32
if age < 12 {
    print("Child")
} else if age < 18 {
    print("Teenage")
} else {
    print("Adult")
}

let a = true
let b = false

if a && b {
    print("Both are valid")
}
if a || b {
    print("At least one is valid")
}
print()

let value = -1
print("Value:", value < 0 ? value : "--")
print()

let color = "white"
switch color {
    case "white":
        print("Bright")
        fallthrough
    case "black":
        print("Dark")
    default:
        print("Normal")
}
print()

let score = 60
switch score {
    case 0..<40:
        print("Reproved")
    case 40..<70:
        print("Final Exam")
    case 70...100:
        print("Approved")
    default:
        print("Invalid score")
}
