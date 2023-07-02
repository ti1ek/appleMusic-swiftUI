//
//  PlayProgress.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct PlayProgress: View {
    var body: some View {
        HStack {
            VStack {
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(.white)
                        .frame(height: 4)
                    Circle()
                        .fill(.white)
                        .frame(width: 10, height: 10)
                }
                .padding([.leading, .trailing], 20)
                HStack(spacing: 300) {
                    Text(Strings.MusicPlayerAllScreen.passedTime)
                        .font(.footnote)
                        .foregroundColor(Color.white)
                    Text(Strings.MusicPlayerAllScreen.remainingTime)
                        .font(.footnote)
                        .foregroundColor(Color.white)
                }
            }
        }
    }
}
