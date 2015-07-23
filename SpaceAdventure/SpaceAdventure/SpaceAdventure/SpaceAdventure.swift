//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by Imam on 7/23/15.
//  Copyright (c) 2015 Imam. All rights reserved.
//

import Foundation


class SpaceAdventure{
    
    
    
   // let planetarySystem = PlanetarySystem(name: "Solar System", planets : [Planet]())
    let planetarySystem: PlanetarySystem
    
    init(planetarySystem: PlanetarySystem)
    {
        
        self.planetarySystem = planetarySystem
        
//        let mercury=Planet(name: "Mercury", description: "A Very Hot planet, closest to the Sun.")
//        planetarySystem.planets.append(mercury)
//        let neptune = Planet(name: "Neptune", description: "A very cold planet, furthest from the sun.")
//       planetarySystem.planets.append(neptune)
        
    }
    

    func start ()
    {
        displayIntroduction()
        greetAdventurer()
        if (!planetarySystem.planets.isEmpty)
        {
          println("Let's go on a adventure !")
        
        determineDestination()
        }
        
    }
    // marked private to indicate that only code within the same file will be able to call
    private func displayIntroduction()
    {
        let numberOfPlanets: Int = 8
        let diameterOfEarth: Float = 24859.82  // in miles. from pole to pole.
        
        println("Welcome to the \(planetarySystem.name) !")
        println("There are \(planetarySystem.planets.count) planets to Explore")
        println("You are Currently on Earth , which has a circumference of \(diameterOfEarth) miles.")
        
        
    }
    
    
    private func determineDestination()
    {
        var decision = ""
        while !(decision == "Y" || decision == "N")
        {
            
            decision = responseToPrompt("Shall i randomly choose a planet for you to visit ? (Y or N )")
            
            if decision == "Y" {
                println("OK! travelling to ...")
                
                if let planet = planetarySystem.randomPlanet{
                  visit(planet.name)
                }else
                {
                     println("Sorry , but Theres no planets in this system")
                }
                
//                // to do : travel to random planet
//                let upperBound = planetarySystem.planets.count
//                let index = Int(arc4random_uniform(UInt32 (upperBound)))
//                 visit(planetarySystem.planets[index].name)
//                
//                
                
            }
            else if decision == "N"
            {
                let planetName = responseToPrompt("Ok, name that the planet you would like to visit ...")
                // todo let the user select a planet to visit
                
                visit(planetName)
                
            }
            else
            {
                println("sorry, I didin't get that")
            }
        }

    }
    
    private func greetAdventurer()
    {
        let name = responseToPrompt("what is your name ?")
        println("Nice to meet you , \(name). My name is Imam, I'm an old friend of Siri.")
        

    }
    
    
    private func visit(planetName: String)
    {
    println("Travelling to \(planetName) ...")
        
        for var i = 0 ; i < planetarySystem.planets.count; i++ {
            let planet = planetarySystem.planets[i]
            if planetName == planet.name {
            println("Arrive at \(planet.name) . \(planet.description)")
            }
        }
    
    }
    
    private func responseToPrompt (prompt: String) -> String {
        println(prompt)
        return getln()
     }
    
}