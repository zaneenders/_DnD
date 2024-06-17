import Color

/* The basic attributes every character has */
public protocol CharacterAttributes: CustomStringConvertible {
    var value: Int { get }
}

extension CharacterAttributes {
    public var description: String {
        displayStat("\(Self.self)", self.value)
    }
}

func displayStat(_ stat: String, _ value: Int) -> String {
    "\(yellow(stat)) Defense: \(value + 10) Bonus: \(value)"
}

public struct Armor: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct HP: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct Strength: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct Dexterity: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct Constitution: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct Intellect: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct Wisdom: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct Charisma: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int
}

public struct Money {
    public init(copper: Int, silver: Int = 0, gold: Int = 0) {
        self.copper = copper
        self.silver = silver
        self.gold = gold
    }
    public let copper: Int
    public let silver: Int
    public let gold: Int
}

extension Money: CustomStringConvertible {
    public var description: String {
        """
        \(yellow("g")):\(gold), \(foreground(.bright(.white),"s")):\(silver), \(foreground(.int(94),"c")):\(copper)
        """
    }
}
