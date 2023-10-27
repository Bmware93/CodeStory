//
//  main.swift
//  CodeStory
//
//  Created by Benia Morgan-Ware on 10/16/23.
//

import Foundation

            

tellStory()

//Function that runs the full story
func tellStory() {
    
    print("The Tale of the Enchanted Doors🚪")
    
    let name = getCharacterName()
    let town = getTownName()
    let hasBagOfMoney = Bool.random()
   
    print("------------------------------------------------------")
    
    storyOpening(name: name, town: town)
    
    print("------------------------------------------------------")
    
    doorDescription(describingDoor: .rubyRedDoor, name: name, town: town)
    doorDescription(describingDoor: .sapphireBlueDoor, name: name, town: town)
    doorDescription(describingDoor: .emeraldGreenDoor, name: name, town: town)
    
    print("------------------------------------------------------")
    
    storyBridge(name: name, town: town)
    
    print("------------------------------------------------------")
    
    guard let userSelectedDoor = chooseDoor(name: name, town: town) else { return }
    
    print("------------------------------------------------------")
    
    redDoorChoice(for: userSelectedDoor, name: name, town: town, hasBagOfMoney: hasBagOfMoney)
    
    blueDoorChoice(for: userSelectedDoor, name: name, town: town, hasBagOfMoney: hasBagOfMoney)
    
    greenDoorChoice(for: userSelectedDoor, name: name, town: town, hasBagOfMoney: hasBagOfMoney)
    
}















