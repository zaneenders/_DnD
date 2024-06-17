public protocol InventoryItem: CustomStringConvertible {
    init()
    var slotSize: Int { get }
}

extension InventoryItem {

    public var slotSize: Int {
        1
    }
    public var description: String {
        "\(Self.self)"
    }
}

public struct Ration: InventoryItem {
    public init() {}
}
public struct Shovel: InventoryItem {
    public init() {}
}
public struct Spyglass: InventoryItem {
    public init() {}
}
public struct TenFootPole: InventoryItem {
    public init() {}
}
public struct Bow: InventoryItem {
    public init() {}
    // Bow (d6 damage, 2 slots, 2 hands, 3 quality) - 15 cp
    public let slotSize: Int = 2
}
public struct ArrowsAndQuiver: InventoryItem {
    public init() {}
}

public struct SmallSpellScroll: InventoryItem {
    public init() {}
}

// Maybe expand on more on what an ArmorItem type means
public protocol ArmorItem {}
public struct Gambeson: InventoryItem, ArmorItem {
    public init() {}
}

public protocol SmallItem {}
// TODO break this up to another result builder containing SmallItem
public struct SmallPouchOf3GreatHealing: InventoryItem {
    public init() {}
}

@resultBuilder
public enum BagBuilder {
    public static func buildPartialBlock(first: some InventoryItem)
        -> [any InventoryItem]
    {
        [first]
    }

    public static func buildPartialBlock(
        accumulated: [any InventoryItem], next: some InventoryItem
    ) -> [any InventoryItem] {
        accumulated + [next]
    }
}

public func Bag(@BagBuilder bag: () -> [any InventoryItem]) -> String {
    let items = bag()
    return items.map { item in
        // TODO total up and return slotSize to ensure under limit
        // print(item.slotSize)
        return item.description
    }.joined()
}

public func Chest(@BagBuilder bag: () -> [any InventoryItem]) -> String {
    let items = bag()
    return items.map { $0.description }.joined()
}

public func Lost(@BagBuilder bag: () -> [any InventoryItem]) -> String {
    let items = bag()
    return items.map { $0.description }.joined()
}
