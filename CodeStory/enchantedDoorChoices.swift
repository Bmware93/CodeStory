//
//  enchantedDoorChoices.swift
//  EnchantedDoors-A coded Story
//
//  Created by Benia Morgan-Ware on 10/26/23.
//

import Foundation


func chooseDoor() -> EnchantedDoor? {
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

func redDoorChoice( for enchantedDoor: EnchantedDoor, name: String, town: String, hasBagOfMoney: Bool) {
    let redDoor = EnchantedDoor(color: .rubyRedDoor)
   
    if enchantedDoor != redDoor {
        return
    } else if hasBagOfMoney {
            printSlow("\(name) slowly turns the knob and enters the Door of Ruby Red...")
            printSlow("As they stepped inside, the room was filled with the intoxicating scent of roses.")
            printSlow("As \(name) wandered among the petals, they discovered bags of glittering coins hidden among the blooms, the treasure of \(town). ")
            printSlow("\(name) left the room with their pockets heavy and a smile on their face, having successfully found the hidden bag of money!")
            
        } else {
            printSlow("\(name) slowly turns the knob and enters the Door of Ruby Red...")
            printSlow("Unfortunately roses concealed no treasure, only danger, and a tangle of thorns that ensnared them, leaving them battered and disheartened. \(name) has left with scratches and bruises, having missed the riches that remained tantalizingly out of reach.")
            printSlow("\(name) left with their spirits crushed, having been tricked by the enchanting appearance of the room.")
            printSlow("The lesson learned was that true riches often lie beneath the surface, hidden from the eyes of the greedy.")
        }
    }


func blueDoorChoice( for enchantedDoor: EnchantedDoor, name: String, town: String, hasBagOfMoney: Bool) {
    let blueDoor = EnchantedDoor(color: .sapphireBlueDoor)
   
    if enchantedDoor != blueDoor {
        return
    } else if hasBagOfMoney {
            printSlow("\(name) slowly turns the knob and enters the Door of Sapphire Blue...")
            printSlow("As \(name) stepped inside, they found themselves in a watery chamber, where chests brimming with gold coins greeted them at the bottom.")
            printSlow("The glimmering coins seemed like a gift from the ocean itself, rewarding those with the courage to dive deep.")
            printSlow("\(name) emerged as a prosperous explorer, having discovered the treasure's hiding place! ")
          
        
            
        } else {
            printSlow("\(name) slowly turns the knob and enters the Door of Sapphire Blue...")
            printSlow("\(name) encountered menacing sea creatures that guarded an empty chest.")
            printSlow("Although they fought valiantly, \(name) returned to \(town) empty-handed, with their dreams of wealth shattered by the fierce guardians of the treasure.")
            printSlow("\(name)'s tales of the underwater encounter served as a solemn reminder that not all riches are meant to be seized, and the ocean's depths held secrets beyond gold and silver.")
        }
    }


func greenDoorChoice( for enchantedDoor: EnchantedDoor, name: String, town: String, hasBagOfMoney: Bool) {
    let greenDoor = EnchantedDoor(color: .emeraldGreenDoor)
   
    if enchantedDoor != greenDoor {
        return
    } else if hasBagOfMoney {
            printSlow("\(name) slowly turns the knob and enters the Door of Emerald Green...")
            printSlow("As they ventured within, \(name) found themselves in a lush, green forest.")
            printSlow("The forest seemed to recognize \(name)'s worthiness, rewarding them with the treasure of \(town), that could only be unlocked by humility and wisdom.")
            printSlow("\(name) left the forest with their pockets filled with gold and their hearts filled with gratitude for their good fortune.")
            
        } else {
            printSlow("\(name) slowly turns the knob and enters the Door of Emerald Green...")
            printSlow("\(name) was ensnared by cunning forest spirits, who led them in endless circles within the forest, leaving them bewildered and penniless.")
            printSlow("The forest concealed no treasure, only illusions, and tests of wit.")
            printSlow("\(name) emerged from the woods, having learned that the pursuit of wealth isn't always straightforward and that some treasures can't be taken but must be earned through wisdom and perseverance.")
        }
    }

//Allows user to repick and choose another door
func chooseAnotherDoor() -> Bool {
    print("Would you like to choose another door? Please enter Yes or No.")
    let userInput = readLine()
    
    guard let userInput else {
        return false
    }
    if userInput.isEmpty {
        return false
    } else if userInput.localizedCaseInsensitiveContains("y") {
       return true
    } else if userInput.localizedCaseInsensitiveContains("n") {
        return false
    }
    return false
}
