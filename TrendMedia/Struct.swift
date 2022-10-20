//
//  Struct.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/17.
//

import Foundation

struct Lists: Encodable, Decodable {
    var textTag: String
    var englishTitle: String
    var img: String
    var koreanTitle: String
    var date1: String
   
}

let movies:[Lists] = [
    Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "7번방의선물", koreanTitle: "베놈", date1: "2022/09/10"),
    Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "광해", koreanTitle: "베놈", date1: "2022/09/10"),
        Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "광해", koreanTitle: "베놈", date1: "2022/09/10")
]

struct Actors {
    var actorImg: String
    var actorName: String
    var role: String
}

let actors:[Actors] = [
    Actors(actorImg: "7번방의선물", actorName: "김은찬", role: "작가"),
    Actors(actorImg: "겨울왕국2", actorName: "여정", role: "친구"),
    Actors(actorImg: "광해", actorName: "김은찬", role: "작가")
]
