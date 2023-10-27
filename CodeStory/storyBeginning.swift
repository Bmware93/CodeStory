//
//  storyBeginning.swift
//  EnchantedDoors-A coded Story
//
//  Created by Benia Morgan-Ware on 10/26/23.
//

import Foundation

func storyOpening(name: String, town: String) {
    printSlow("There once was a famous Traveler named \(name).")
    printSlow("And on one of their many journey's, they wondered into a mysterious town called \(town),")
    printSlow("There was a legend whispered among the townsfolk")
    printSlow("They spoke of a hidden bag of treasure, guarded by three enchanted doors of different colors...")
    printSlow("The Door of Ruby Red, the Door of Sapphire Blue, and the Door of Emerald Green.")
    printSlow("To find the treasure, \(name) will have to make a choice, ")
    printSlow("A choice of courage and intuition.")
    printSlow("Many had tried, but none had returned.")
    printSlow("It was said that behind one of the doors lay the path to unimaginable riches, while behind the others were perils beyond imagination.")
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

func storyBridge(name: String, town: String) {
    printSlow("Well \(name), the time has now come for you to decide...")
    printSlow("For behind two of the doors lay traps, and behind the third, the path to the hidden bag of money.")
    printSlow("The townsfolk often wondered who would be the one to unlock the riddle and claim the riches of \(town).")
    printSlow("Will it be you?")
    
    printSlow("Your time has come to choose. Which door will \(name) pick?")
}
