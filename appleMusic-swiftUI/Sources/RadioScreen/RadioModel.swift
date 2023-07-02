//
//  RadioModel.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

struct RadioScreenModel {
    var name: String
    var title: String?
    var text: String?
    var image: String
}

extension RadioScreenModel {
    static let bigSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "Apple Music Country", title: "Избранная радиостанция", text: "Станция Apple Music", image: "2"),
        RadioScreenModel(name: "Apple Music Hits", title: "Избранная радиостанция", text: "Станция Apple Music", image: "1"),
        RadioScreenModel(name: "Apple Music 1", title: "Избранная радиостанция", text: "Станция Apple Music", image: "3"),
    ]
    
    static let recentSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "Kany West", text: "Stronger", image: "4"),
        RadioScreenModel(name: "Miley Cirus", text: "Flowers", image: "5"),
        RadioScreenModel(name: "Imagine Dragons", text: "enemy", image: "6"),
        RadioScreenModel(name: "The Weeknd", text: "Thursday", image: "7")
    ]
    
    static let poularStantionsSectionModels: [RadioScreenModel] = [
        RadioScreenModel(name: "Топ-100 Нигерия", text: "Популярное", image: "8"),
        RadioScreenModel(name: "Топ-100 Италия", text: "Популярное", image: "9"),
        RadioScreenModel(name: "100 лучших песен 2021", text: "Популярное", image: "10"),
        RadioScreenModel(name: "ТОП-50 Классика", text: "Популярное", image: "11")
    ]
}

