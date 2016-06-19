//: Playground - noun: a place where people can play

import Foundation
//define a array of dictionary
var players = [["Name":"Joe Smith","Height":42.0,"Soccer Experience": true, "Guardian Name": "Jim and Jan Smith"],
    ["Name":"Jill Tanner","Height":36.0,"Soccer Experience":true,"Guardian Name": "Clara Tanner"],
    ["Name": "Bill Bon", "Height":43.0, "Soccer Experience":true,"Guardian Name":"Sara and Jenny Bon"],
    ["Name": "Eva Gordon", "Height":45.0, "Soccer Experience":false, "Guardian Name":"Wendy and Mike Gordon"],
    ["Name":"Matt Gill","Height":40.0, "Soccer Experience":false, "Guardian Name":"Charles and Sylvia Gill"],
    ["Name":"Kimmy Stein", "Height":41.0, "Soccer Experience":false,"Guardian Name":"Bill and Hillary Stein"],
    ["Name":"Sammy Adams", "Height":45.0, "Soccer Experience":false,"Guardian Name":"Jeff Adams"],
    ["Name":"Karl Saygan", "Height":42.0, "Soccer Experience":true, "Guardian Name":"Heather Bledsoe"],
    ["Name":"Suzane Greenberg", "Height":44.0, "Soccer Experience":true, "Guardian Name":"Henrietta Dumas"],
    ["Name":"Sal Dali","Height":41.0, "Soccer Experience":false,"Guardian Name":"Gala Dali"],
    ["Name":"Joe Kavalier","Height":39.0,"Soccer Experience" :false,"Guardian Name":"Sam and Elaine Kavalier"],
    ["Name":"Ben Finkelstein","Height":44.0,"Soccer Experience":false,"Guardian Name":"Aaron and Jill Finkelstein"],
    ["Name":"Diego Soto","Height":41.0,"Soccer Experience":true,"Guardian Name":"Robin and Sarika Soto"],
    ["Name":"Chloe Alaska","Height":47.0,"Soccer Experience":false,"Guardian Name":"David and Jamie Alaska"],
    ["Name":"Arnold Willis","Height":43.0,"Soccer Experience":false,"Guardian Name":"Claire Willis"],
    ["Name":"Phillip Helm","Height":44.0,"Soccer Experience":true,"Guardian Name":"Thomas Helm and Eva Jones"],
    ["Name":"Les Clay","Height":42.0,"Soccer Experience":true,"Guardian Name":"Wynonna Brown"],
    ["Name":"Herschel Krustofski","Height":45.0,"Soccer Experience":true,"Guardian Name":"Hyman and Rachel Krustofski"]
]
// Three team
var dragonsPlayer = [[:]]
var sharksPlayer = [[:]]
var raptorsPlayer = [[:]]
var soccerExperience: Int = 0
var tempSoccerExperience: Int = 1
// All player number
let playerNumber: Int = players.count
for player in players {
    if player["Soccer Experience"] == true {
        soccerExperience += 1
    }
}
for player in players {
    if player["Soccer Experience"] == true {
        
        
        if tempSoccerExperience <= 3 {
            dragonsPlayer.append(player)
            tempSoccerExperience += 1
        }else if tempSoccerExperience < 6 {
            sharksPlayer.append(player)
            tempSoccerExperience += 1
        }else if tempSoccerExperience < 9 {
            raptorsPlayer.append(player)
            tempSoccerExperience += 1
        }
    }
    else {
        if dragonsPlayer.count <= playerNumber / 3{
            dragonsPlayer.append(player)
        }else if sharksPlayer.count < playerNumber / 3{
            sharksPlayer.append(player)
        }else if raptorsPlayer.count < playerNumber / 3{
            raptorsPlayer.append(player)
        }
        
    }
}
//Dragons - March 17, 1pm, Sharks - March 17, 3pm, Raptors - March 18, 1pm
//(player name, team name, guardians’ names, practice date/time),
for var player in dragonsPlayer {
    print("\(player["Name"]) \(player["Guardian Name"]) Dragons - March 17, 1pm")
}
for var player in sharksPlayer {
    print("\(player["Name"]) \(player["Guardian Name"]) Sharks - March 17, 3pm")
}
for var player in raptorsPlayer {
    print("\(player["Name"]) \(player["Guardian Name"]) Raptors - March 18, 1pm")
}