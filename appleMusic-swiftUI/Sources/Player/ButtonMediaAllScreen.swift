//
//  ButtonMediaAllScreen.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct ButtonMediaAllScreen: View {
    var body: some View {
        HStack(spacing: 40) {
            Button(action: {}, label: {
                Image(systemName: Strings.MusicPlayerAllScreen.backTrack )
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            .padding()
            
            Button(action: {}, label: {
                Image(systemName: Strings.MusicPlayer.playButton)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            .padding()
            
            Button(action: {}, label: {
                Image(systemName: Strings.MusicPlayerAllScreen.nextTrack)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })
            .padding()
        }
    }
}

struct ButtonMediaAllScreen_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMediaAllScreen()
    }
}

