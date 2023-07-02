//
//  MusicLabelView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct MusicLabelView: View {
    var body: some View {
        VStack {
            Text(Strings.MusicLabel.topText)
                .bold()
                .font(.system(size: 22))
            Text(Strings.MusicLabel.bottomText)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
    }
}

struct MusicLabelView_Previews: PreviewProvider {
    static var previews: some View {
        MusicLabelView()
    }
}
