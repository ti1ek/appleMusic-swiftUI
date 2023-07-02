//
//  SearchScreen.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 03.07.2023.
//

import SwiftUI

struct SearchScreen: View {
    var models = SearchScreenModel.searchModels
    @State private var searchText = ""
    @State private var searchScreen = SearchScreenModel.searchModels
    @State var isAlertPresented = false
    
    var columns = [
        GridItem(.fixed(200), spacing: 2),
        GridItem(.fixed(200))
    ]
    
    var searchResults: [SearchScreenModel] {
        if searchText.isEmpty {
            return searchScreen
        } else {
            return searchScreen.filter {
                $0.name
                    .localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading) {
                Text(Strings.Headers.headerSearch)
                    .font(.title2)
                    .bold()
                    .padding(.leading, 20)
                LazyVGrid(columns: columns) {
                    ForEach(searchResults, id: \.name) { model in
                        ZStack(alignment: .bottomLeading) {
                            NavigationLink (destination: DetailView()
                                .navigationTitle("\(model.name)")
                            ) {
                                Image(model.image)
                                    .resizable()
                                    .frame(width: 180, height: 150)
                                    .cornerRadius(25)
                            }
                            
//                            Text(model.name)
//                                .font(.title3)
//                                .bold()
//                                .foregroundColor(.white)
//                                .padding(EdgeInsets(top: 20, leading: 8, bottom: 15, trailing: 0))
                        }
                    }
                }
            }
            
            .navigationTitle(Strings.NavigationTitles.searchScreenTitles)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}

