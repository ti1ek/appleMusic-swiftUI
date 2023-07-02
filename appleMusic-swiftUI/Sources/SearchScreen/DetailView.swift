//
//  DetailView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 03.07.2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            RadioTopSections()
            HStack {
                RadioSmallSections()
            }
        }
        .padding(.bottom, 90)
    }
}
