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
    var link: String?
    var actors: [String]?
   
}

let movies:[Lists] = [
    Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "7번방의선물", koreanTitle: "베놈", date1: "2022/09/10", link: "", actors: ["김", "이", "박"]),
    Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "광해", koreanTitle: "베놈", date1: "2022/09/10", link: "", actors: ["김", "이", "박"]),
        Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "광해", koreanTitle: "베놈", date1: "2022/09/10", link: "", actors: ["김", "이", "박"])
]

