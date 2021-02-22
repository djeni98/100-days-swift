// Day 2
let prices: [Double] = [1, 1.5, 10, 100.75]
print(prices)
print(prices[0])
print()

let favorite_colors = Set(["yellow", "green"])
print(favorite_colors)
print()

let rgb_blue = (red: 0, green: 0, blue: 255)
print(rgb_blue)
print("r = \(rgb_blue.0), g = \(rgb_blue.1), b = \(rgb_blue.blue)")
print()

let products: [String: Int] = [
    "apple": 20
]
print(products)
print("bananas: \(products["banana", default: 0])")
print()


print("Empty collections ",
    [Int: Int](), Dictionary<Int, Int>(),
    [Double](), Array<Double>(),
    Set<String>()
)
print()

enum Status {
    case success
    case failure(message: String)
}
print(Status.success)
print(Status.failure(message: "Testing failure"))
print()

enum Podium: Int {
    case first = 1
    case second
    case third
}
print(Podium(rawValue: 4) ?? "Not found")
print(Podium(rawValue: 2) ?? "Second **")
print(Podium.first)
