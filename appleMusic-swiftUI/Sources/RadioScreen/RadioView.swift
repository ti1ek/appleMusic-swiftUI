//
//  RadioView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct RadioMainScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                RadioTopSections()
                Divider()
                    .padding([.leading,.trailing])
                HStack {
                    RadioSmallSections()
                        .padding(.bottom, 80)
                }
                .navigationTitle(Strings.NavigationTitles.radioScreenTitles)
            }
        }
    }
}
struct RadioMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        RadioMainScreen()
    }
}
