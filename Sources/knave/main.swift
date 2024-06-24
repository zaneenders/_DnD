import Color
import _DnD

struct Fuku: CustomStringConvertible {
    var description: String {
        """
        Fuku, Wielder of Poles
            - previous cook
        \(Armor( 10 + 2)) (Gambeson)
        \(HP(5))
        \(Money(copper: 20 + 5))
        Level: 1 
        XP: 0 (can level up at 10)

        Ability Scores (Base Score of 10):
        \(Strength( 2))
        \(Dexterity( 1))
        \(Constitution( 1))
        \(Intellect( 1))
        \(Wisdom( 1))
        \(Charisma( 4))
        Starting Gear
        Inventory (Max 10 + 1 constitution)
        \(Bag{
            Ration()
            Ration()
            Gambeson()
            TenFootPole()
            Shovel()
            Spyglass()
            ArrowsAndQuiver()
            Bow()
        })

        Chest(metal chest):
        \(Chest{
            SmallPouchOf3GreatHealing(
                /*
                - golden
                - 2 d4
                - greater healing
                */
            )
            SmallSpellScroll(/* blue writing */)
        })

        Lost:
            - Crowbar (1 slot)

        Traits:
        - Physique: Brawny
        - Face: Ratlike
        - Skin: Burn Scar
        - Hair: Wavy
        - Clothing: Filthy
        - Virtue: Ambitious
        - Vice: Greedy
        - Speech: Flowery

        Background: Cook

        Misfortunes: Defrauded
        Agoras

        Town of Blackmount
            - gold never found
            - some iron 
            - lots of coal 
            - some gems

        Open pit mine near bear

        Most people are miners or loggers
        No lake near by

        Noah - the merchant

        Strange things traveling East
        "Fuzz truffles"
        "stumble pump"
        """
    }
}

print(Fuku())
