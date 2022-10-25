//
//  Struct.swift
//  TrendMedia
//
//  Created by Eunchan Kim on 2022/10/17.
//

import Foundation

struct Lists { // Int, String
    var textTag: String
    var englishTitle: String
    var img: String
    var koreanTitle: String
    var date1: String
    var link: String?
    var actors: [Actors]
}

struct Actors {
    var name: String
    var img: String
}

let movies: [Lists] = [
    Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "7번방의선물", koreanTitle: "베놈", date1: "2022/09/10", link: "https://www.youtube.com/watch?v=vB0jwi2No4w&list=PL4iV8jX_9cujfd5GX6G3ioNf56fNBpqus&ab_channel=%EC%9C%A0%EC%9A%B0%EC%84%B1%EC%9D%98%EC%9E%85%ED%84%B0%EB%B7%B0", actors: [Actors(name: "김", img: "url"), Actors(name: "이", img: "url") ,Actors(name: "박", img: "url")]),
    Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "광해", koreanTitle: "베놈", date1: "2022/09/10", link: "https://www.youtube.com/watch?v=OaxWPcWG548&ab_channel=%EC%A7%84%EC%96%B8%EC%A7%A0", actors: [Actors(name: "김", img: "url"), Actors(name: "이", img: "url") ,Actors(name: "박", img: "url")]),
    Lists(textTag: "#액션", englishTitle: "Venom - 1", img: "광해", koreanTitle: "베놈", date1: "2022/09/10", link: "https://www.youtube.com/watch?v=J4yr7JmvWYU&ab_channel=%EC%A7%84%EC%96%B8%EC%A7%A0", actors: [Actors(name: "김", img: "url"), Actors(name: "이", img: "url") ,Actors(name: "박", img: "url")])
]


struct BookList: Encodable, Decodable {
    var bookName: String
    var bookImg: String
}

let books: [BookList] = [
    BookList(bookName: "책1", bookImg: ""),
    BookList(bookName: "책2", bookImg: ""),
    BookList(bookName: "책3", bookImg: "")
]
