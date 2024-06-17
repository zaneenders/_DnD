/* The basic attributes every character has */
public protocol CharacterAttributes: CustomStringConvertible {}

public struct Armor: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) Defense: \(value + 10) Bonus: \(value)"
    }
}

public struct HP: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) \(value)"
    }
}

public struct Strength: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) Defense: \(value + 10) Bonus: \(value)"
    }
}

public struct Dexterity: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) Defense: \(value + 10) Bonus: \(value)"
    }
}

public struct Constitution: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) Defense: \(value + 10) Bonus: \(value)"
    }
}

public struct Intellect: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) Defense: \(value + 10) Bonus: \(value)"
    }
}

public struct Wisdom: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) Defense: \(value + 10) Bonus: \(value)"
    }
}

public struct Charisma: CharacterAttributes {
    public init(_ value: Int) {
        self.value = value
    }
    public let value: Int

    public var description: String {
        "\(Self.self) Defense: \(value + 10) Bonus: \(value)"
    }
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
        g:\(gold), s:\(silver), c:\(copper)
        """
    }
}
