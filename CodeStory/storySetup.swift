//
//  storySetup.swift
//  EnchantedDoors-A coded Story
//
//  Created by Benia Morgan-Ware on 10/26/23.
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
//This function does the same thing as the one above. Just written differently
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
//You can adjust the time interval to speed the story up or down
func printSlow(_ text: String, delay: TimeInterval = 0.008) {
    for char in text {
        print(char, terminator: "")
     
        Thread.sleep(forTimeInterval: delay)
    }
    print("")
}

enum EnchantedDoors: String, CaseIterable {
    case rubyRedDoor = "The Door of Ruby Red"
    case sapphireBlueDoor = "The Door of Sapphire Blue"
    case emeraldGreenDoor = "The Door of Emerald Green"
}
