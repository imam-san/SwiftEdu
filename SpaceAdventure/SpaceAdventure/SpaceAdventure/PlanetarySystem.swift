//
//  PlanetarySystem.swift
//  SpaceAdventure
//
//  Created by Imam on 7/23/15.
//  Copyright (c) 2015 Imam. All rights reserved.
//

import Foundation

class PlanetarySystem {
    
    let name: String
    let planets: [Planet]
    
    
    var randomPlanet: Planet? {
    
        if planets.isEmpty {
          return nil
        }else
        {
            let index = Int(arc4random_uniform(UInt32 (planets.count)))
            return planets[index]
        }
        
    }
    
    init (name:String, planets: [Planet])
    {
        self.name = name
        self.planets = planets
    }
    
   
}
