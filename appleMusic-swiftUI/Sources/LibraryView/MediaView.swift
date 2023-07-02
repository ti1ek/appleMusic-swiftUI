//
//  MediaView.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct MediaView: View {
    @State private var editMode: EditMode = .active
    @State var isPresented = false
    @State var expand = false
    @Namespace var animation
    
    var body: some View {
        NavigationView {
            VStack {
                if !isPresented {
                    MusicLabelView()
                    Spacer()
                } else {
                    ZStack {
                        ListView()
                            .environment(\.editMode, $editMode)
                            .frame(alignment: .top)
                            .padding(.top, -280)
                    }
                    .background(Color.white)
                }
            }
            .navigationTitle(Strings.NavigationTitles.mediatekaScreenTitles)
            .padding(EdgeInsets(top: 280, leading: 0, bottom: 0, trailing: 0))
            .navigationBarItems(
                trailing: HStack {
                    Button(isPresented ? "Готово" : "Править") {
                        isPresented.toggle()
                    }
                    .foregroundColor(.red)
                })
        }
    }
}

struct MediaView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}

