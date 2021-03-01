// Day 09
struct Permission {
    let name = "Permission"
    init() {
        print("Set permissions")
    }
}

struct User {
    var username: String
    lazy var permission = Permission();
    private static var count = 0

    init(username: String) {
        self.username = "Anonymous"
        print("Creating a new user!")
        User.count += 1
    }

    static func getCount() -> Int {
        return User.count
    }
}
var user = User(username: "twostraws")
print(user.permission.name)
print(User.getCount())
