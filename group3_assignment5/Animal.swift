//
//  Animal.swift
//  group3_assignment5
//
//  Created by Jessica Hairston on 3/4/20.
//  Copyright © 2020 Jill Rosow. All rights reserved.
//

import Foundation

class Animal{
    
    let name:String
    let sciname:String
    let cls:String
    let size:String
    
    init(name:String, sciname:String, cls:String, size:String){
        self.name = name
        self.sciname = sciname
        self.cls = cls
        self.size = size
    }
}

let arcticfox = Animal(name:"Arctic Fox", sciname:"Vulpes lagopus", cls:"Mammalia", size:"3.5kg")
let ermine = Animal(name:"Ermine", sciname:"Mustela erminea", cls:"Mammalia", size:"0.3kg")
let ezomomonga = Animal(name:"Ezo Momonga", sciname:"Pteromys volans", cls:"Mammalia", size:"0.22kg")
let redpanda = Animal(name:"Red Panda", sciname:"Ailurus fulgens", cls:"Mammalia", size:"5.0kg")
