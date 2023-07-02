//
//  SearchModel.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 03.07.2023.
//

import Foundation

struct SearchScreenModel {
    var name: String
    var image: String
}

extension SearchScreenModel {
    static let searchModels: [SearchScreenModel] = [
        SearchScreenModel(name: "Country", image: "2"),
        SearchScreenModel(name: "Hits", image: "1"),
        SearchScreenModel(name: "Top Nigeria", image: "8"),
        SearchScreenModel(name: "Top Italia", image: "9"),
        SearchScreenModel(name: "Top-2021", image: "10"),
        SearchScreenModel(name: "Classics", image: "11"),
    ]
}
