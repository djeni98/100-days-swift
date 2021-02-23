// Day 4
for product in ["apple", "banana"] {
    print(product)
}
print()

for _ in 1...2 {
    print("yay")
}
print()

var n = 3
while n != 0 {
    print(n)
    n -= 1
}
print()

repeat {
    print(n)
    n += 1
} while n < 3
print()

outerLoop: while true {
    for i in 90...100 {
        print(i)
        if i == 95 {
            break outerLoop
        }
    }
}
print()

for i in 100...110 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}
