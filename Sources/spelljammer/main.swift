import Color
import _DnD

let out = """
    \(yellow("Spell Jammer"))

    \(green("Auto Gnome")) - You are a construct
    \(green("Name")): Tik "Cogheart" Tinkerbolt
    \(green("size")): small
    \(green("class")): Monk

    \(/* 
    Hit Dice: 1d8 per monk level
    Hit Points at 1st Level: 8 + your Constitution modifier
    Hit Points at Higher Levels: 1d8 (or 5) + your Constitution modifier per monk level after 1st

    Proficiencies
    3 Choices
    1st level
    Armor: None
    Weapons: Simple weapons, short swords
    Tools: Choose one type of artisan’s tools or one musical instrument
    Saving Throws: Strength, Dexterity
    Skills: Choose two from Acrobatics, Athletics, History, Insight, Religion, and Stealth

    Acrobatics
    Athletics
    Horn


    Unarmored Defense
    1st level
    Beginning at 1st level, while you are wearing no armor and not wielding a shield, your AC equals 10 + your Dexterity modifier + your Wisdom modifier.


    Martial Arts
    1st level
    At 1st level, your practice of martial arts gives you mastery of combat styles that use unarmed strikes and monk weapons, which are short swords and any simple melee weapons that don’t have the two-handed or heavy property.

    You gain the following benefits while you are unarmed or wielding only monk weapons and you aren’t wearing armor or wielding a shield:

    You can use Dexterity instead of Strength for the attack and damage rolls of your unarmed strikes and monk weapons.
    You can roll a d4 in place of the normal damage of your unarmed strike or monk weapon. This die changes as you gain monk levels, as shown in the Martial Arts column of the Monk table.
    When you use the Attack action with an unarmed strike or a monk weapon on your turn, you can make one unarmed strike as a bonus action. For example, if you take the Attack action and attack with a quarterstaff, you can also make an unarmed strike as a bonus action, assuming you haven’t already taken a bonus action this turn.
    Certain monasteries use specialized forms of the monk weapons. For example, you might use a club that is two lengths of wood connected by a short chain (called a nunchaku) or a sickle with a shorter, straighter blade (called a kama). Whatever name you use for a monk weapon, you can use the game statistics provided for the weapon in the Weapons section.
    */ "")
    \(green("HP")): \(8 + 0 /* Constitution modifier */)

    \(yellow("Back story")) \(6)
    You felt trapped in the role for which you were built and abandoned your creator, determined to find a greater purpose

    \(Strength(10))
    \(Dexterity(4) /* Plus 13 instead of 10 */)
    \(Constitution(3))
    \(Intellect(5 + 2))
    \(Wisdom(2))
    \(Charisma(8 - 1))

    Skills:
    - Nature
    - Survival

    \(blue(":"))
    \(yellow("Armored Casing:"))
    You are encased in thin metal or some other durable material. While you aren't wearing armor, your base Armor Class is 13 + your Dexterity modifier.

    \(yellow("Built for Success:"))
    You can add a d4 to one attack roll, ability check, or saving throw you make, and you can do so after seeing the d20 roll but before the effects of the roll are resolved. You can use this trait a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest.

    \(yellow("Healing Machine:"))
    If the mending spell is cast on you, you can spend a Hit Die, roll it, and regain a number of hit points equal to the roll plus your Constitution modifier (minimum of 1 hit point).
    In addition, your creator designed you to benefit from several spells that preserve life but that normally don't affect Constructs: cure wounds, healing word, mass cure wounds, mass healing word, and spare the dying.

    \(yellow("Mechanical Nature:"))
    You have resistance to poison damage and immunity to disease, and you have advantage on saving throws against being paralyzed or poisoned. You don't need to eat, drink, or breathe.

    \(yellow("Sentry's Rest:"))
    When you take a long rest, you spend at least 6 hours in an inactive, motionless state, instead of sleeping. In this state, you appear inert, but you remain conscious.

    \(yellow("Specialized Design:"))
    You gain two tool proficiencies of your choice, selected from the Player's Handbook.
    """

print(out)
