//
//  SearchView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct SearchMainScreen: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                SearchScreen()
            }
            .padding(.bottom, 90)
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        SearchMainScreen()
    }
}
