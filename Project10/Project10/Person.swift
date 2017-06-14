//
//  Person.swift
//  Project10
//
//  Created by Daniel Loureda Arteaga on 14/6/17.
//  Copyright © 2017 Dano. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String
    var image: String
    
    init(name:String, image:String){
        self.name = name
        self.image = image
    }
}
