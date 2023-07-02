//
//  VolumeControl.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct VolumeControl: View {
    @State var volume: CGFloat = 0
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: Strings.MusicPlayerAllScreen.leftIconVolume)
                .foregroundColor(.white)
            Slider(value: $volume)
                .accentColor(.white)
            Image(systemName: Strings.MusicPlayerAllScreen.rightIconVolume)
                .foregroundColor(.white)
        }
    }
}
