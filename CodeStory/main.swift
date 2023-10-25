//
//  main.swift
//  CodeStory
//
//  Created by Benia Morgan-Ware on 10/16/23.
//

import Foundation

            
struct EnchantedDoor: Equatable {
    var color: EnchantedDoors
}

//Function that prompts user for their name
func getCharacterName() -> String {
    print("Please enter your character's name: ")
    let characterName = readLine()?.capitalized
    
    if characterName == "" {
        return "Luke"
    }
    return characterName ?? "Luke"
}

//Function that prompts user to name the town in the story
func getTownName() -> String {
    print("Please enter the name of the mystical town you are exploring: ")
    let townName = readLine()?.capitalized
    
    guard let townName else {
        return "Eldoria"
    }
    if townName.isEmpty {
        return "Eldoria"
    }
    return townName
}

//Function that gives the type-writer effect to the print statements
func printSlow(_ text: String, delay: TimeInterval = 0.11) {
    for char in text {
        print(char, terminator: "")
     
        Thread.sleep(forTimeInterval: delay)
    }
    print("")
}


func tellStory() {
    let name = getCharacterName()
    let town = getTownName()
    let hasBagOfMoney = Bool.random()
   
    
    print("------------------------------------------------------")
    
    printSlow("There once was a famous Traveler named \(name).")
    printSlow("And on one of their many journey's, they wondered into a mysterious town called \(town),")
    printSlow("There was a legend whispered among the townsfolk")
    printSlow("They spoke of a hidden bag of treasure, guarded by three enchanted doors of different colors...")
    printSlow("The Door of Ruby Red, the Door of Sapphire Blue, and the Door of Emerald Green.")
    printSlow("To find the treasure, \(name) will have to make a choice, ")
    printSlow("A choice of courage and intuition.")
    printSlow("Many had tried, but none had returned.")
    printSlow("It was said that behind one of the doors lay the path to unimaginable riches, while behind the others were perils beyond imagination.")
    
    print("------------------------------------------------------")
    
    doorDescription(describingDoor: .rubyRedDoor, name: name, town: town)
    doorDescription(describingDoor: .sapphireBlueDoor, name: name, town: town)
    doorDescription(describingDoor: .emeraldGreenDoor, name: name, town: town)
    
    print("------------------------------------------------------")
    
    storyMiddle(name: name, town: town)
    
    print("------------------------------------------------------")
    
    guard let userSelectedDoor = chooseDoor(name: name, town: town) else { return }
    
    print("------------------------------------------------------")
    
    redDoorChoice(for: userSelectedDoor, name: name, town: town, hasBagOfMoney: hasBagOfMoney)
    
    blueDoorChoice(for: userSelectedDoor, name: name, town: town, hasBagOfMoney: hasBagOfMoney)
    
    greenDoorChoice(for: userSelectedDoor, name: name, town: town, hasBagOfMoney: hasBagOfMoney)
    
}

enum EnchantedDoors: String, CaseIterable {
    case rubyRedDoor = "The Door of Ruby Red"
    case sapphireBlueDoor = "The Door of Sapphire Blue"
    case emeraldGreenDoor = "The Door of Emerald Green"
}

func doorDescription(describingDoor: EnchantedDoors, name: String, town: String) {
 
    switch describingDoor {
    case .rubyRedDoor:
        printSlow("The Door of Ruby Red shimmered in the twilight, luring adventurers with its warm, inviting hue. Those who dared to enter found the room filled with roses.")
        printSlow("Will \(name) discover bags of glittering coins hidden among the petals - the treasure of \(town)?")
        printSlow("Or will \(name) be faced with a treacherous thorn-filled trap that leaves them empty-handed and scarred?")
        
        print("------------------------------------------------------")
        
    case .sapphireBlueDoor:
        printSlow("The Door of Sapphire Blue glistened with an alluring coolness, promising secrets of the deep.")
        printSlow("Will \(name) open it and find themselves in a room filled with crystal-clear water, with chests overflowing with gold coins resting at the bottom?")
        printSlow("Or will \(name) encounter menacing sea creatures that guard an empty chest, leaving them with only harrowing tales of their underwater ordeal?")
        
        print("------------------------------------------------------")
        
    case .emeraldGreenDoor:
        printSlow("The Door of Emerald Green beckoned with its vibrant, earthy allure.")
        printSlow("Legend says that some were greeted by a wise old tree who bestowed upon them the riches of \(town).")
        printSlow("Will \(name) venture within and find themselves in a lush, green forest that leaves their pockets filled with gold and heart filled with gratitude?")
        printSlow("Or will \(name) be ensnared by cunning forest spirits, who led them in endless circles, leaving them penniless and disoriented?")
        
    }
}

func storyMiddle(name: String, town: String) {
    printSlow("Well \(name), the time has now come for you to decide...")
    printSlow("For behind two of the doors lay traps, and behind the third, the path to the hidden bag of money.")
    printSlow("The townsfolk often wondered who would be the one to unlock the riddle and claim the riches of \(town).")
    printSlow("Will it be you?")
    
    printSlow("Your time has come to choose. Which door will \(name) pick?")
}

func redDoorChoice( for enchantedDoor: EnchantedDoor, name: String, town: String, hasBagOfMoney: Bool) {
    let redDoor = EnchantedDoor(color: .rubyRedDoor)
   
    if enchantedDoor != redDoor {
        return
    } else if hasBagOfMoney {
            printSlow("\(name) slowly turns the knob and enters the Door of Ruby Red...")
            printSlow("As they stepped inside, the room was filled with the intoxicating scent of roses.")
            printSlow("As \(name) wandered among the petals, they discovered bags of glittering coins hidden among the blooms, the treasure of \(town). ")
            
        } else {
            printSlow("The roses concealed no treasure, only danger, and a tangle of thorns that ensnared them, leaving them battered and disheartened. \(name) has left with scratches and bruises, having missed the riches that remained tantalizingly out of reach.")
        }
    
}


func blueDoorChoice( for enchantedDoor: EnchantedDoor, name: String, town: String, hasBagOfMoney: Bool) {
    let blueDoor = EnchantedDoor(color: .sapphireBlueDoor)
   
    if enchantedDoor != blueDoor {
        return
    } else if hasBagOfMoney {
            printSlow("\(name) slowly turns the knob and enters the Door of Sapphire Blue...")
            printSlow("As they stepped inside, the room was filled with the intoxicating scent of roses.")
            printSlow("As \(name) wandered among the petals, they discovered bags of glittering coins hidden among the blooms, the treasure of \(town). ")
            
        } else {
            printSlow("The roses concealed no treasure, only danger, and a tangle of thorns that ensnared them, leaving them battered and disheartened. \(name) has left with scratches and bruises, having missed the riches that remained tantalizingly out of reach.")
        }
    
}


func greenDoorChoice( for enchantedDoor: EnchantedDoor, name: String, town: String, hasBagOfMoney: Bool) {
    let greenDoor = EnchantedDoor(color: .emeraldGreenDoor)
   
    if enchantedDoor != greenDoor {
        return
    } else if hasBagOfMoney {
            printSlow("\(name) slowly turns the knob and enters the Door of Emerald Green...")
            printSlow("As they stepped inside, the room was filled with the intoxicating scent of roses.")
            printSlow("As \(name) wandered among the petals, they discovered bags of glittering coins hidden among the blooms, the treasure of \(town). ")
            
        } else {
            printSlow("The roses concealed no treasure, only danger, and a tangle of thorns that ensnared them, leaving them battered and disheartened. \(name) has left with scratches and bruises, having missed the riches that remained tantalizingly out of reach.")
        }
    
}


func chooseDoor(name: String, town: String) -> EnchantedDoor? {
    var chosenDoor: EnchantedDoor?
    
    //Prompt repeats until user selects a red, blue or green door
    while chosenDoor == nil {
        
        print("Please enter your choice: (The Door of Ruby Red, The Door of Sapphire Blue or The Door of Emerald Green).")
        let userSelection = readLine()
        
        guard let userSelection else {
            return EnchantedDoor(color: .allCases.randomElement()!)
        }
        if userSelection.isEmpty {
            return EnchantedDoor(color: .allCases.randomElement()!)
            
        } else if userSelection.localizedCaseInsensitiveContains("red") {
            chosenDoor = EnchantedDoor(color: .rubyRedDoor)
        } else if userSelection.localizedCaseInsensitiveContains("blue") {
            chosenDoor = EnchantedDoor(color: .sapphireBlueDoor)
        } else if userSelection.localizedCaseInsensitiveContains("green") {
            chosenDoor = EnchantedDoor(color: .emeraldGreenDoor)
        } else {
            print("You've entered an invalid option")
        }
    }
 
      return chosenDoor
}


tellStory()






