//
//  main.swift
//  SpaceAdventure
//
//  Created by Imam on 7/23/15.
//  Copyright (c) 2015 Imam. All rights reserved.
//

import Foundation

// var usually for variable and let for constant value such PI = 3.14

//var numberOfPlanets: Int = 8
//var diameterOfEarth: Float = 24859.82  // in miles. from pole to pole.

let planetData = [
    "Mercury": "A very hot planet, closest to the sun.",
"Venus": "It's very cloudy here!",
"Earth": "There is something very familiar about this planet.",
 "Mars": "Known as the red planet.",
"Jupiter": "A gas giant, with a noticeable red spot.",
 "Saturn": "This planet has beautiful rings around it.",
 "Uranus": "Strangely, this planet rotates around on its side.",
 "Neptune": "A very cold planet, furthest from the sun."]

    
//var planets = [Planet]()

//for (name,description) in planetData {
//    planets.append(Planet(name:  name, description: description))
//}

let planets = map(planetData)
    { name, description in
         Planet (name: name, description: description)
}


//
//let earth = Planet(name: "Earth", description: "A warm planet, blue planet")
//planets.append(earth)
//let mercury=Planet(name: "Mercury", description: "A Very Hot planet, closest to the Sun.")
//
//
//var planets = [Planet]()
//
//planets.append(mercury)
//let neptune = Planet(name: "Neptune", description: "A very cold planet, furthest from the sun.")
//planets.append(neptune)
//
//let earth = Planet(name: "Earth", description: "A warm planet, blue planet")
//planets.append(earth)


let systemName = "Solar System"
let solarSystem = PlanetarySystem(name: systemName, planets: planets)
let adventure =  SpaceAdventure(planetarySystem: solarSystem)

adventure.start()

/*

println("Welcome to our Solar System !")
println("There are \(numberOfPlanets) planets to Explore")
println("You are Currently on Earth , which has a circumference of \(diameterOfEarth) miles.")

println("What is your name ? ")
// add funtion
let name = getln()
println("Nice to meet you , \(name). My name is Imam, I'm an old friend of Siri.")

println("Let's go on a adventure !")
println("Shall i randomly choose a planet for you to visit ? (Y or N")


var decision = ""
while !(decision == "Y" || decision == "N")
{

 decision = getln()

if decision == "Y" {
    println("OK! travelling to ...")
    // to do : travel to random planet
}
else if decision == "N"
{
     println("Ok, name that the planet you would like to visit ...")
    // todo let the user select a planet to visit
    
}
    else
    {
         println("sorry, I didin't get that")
    }
}
*/








