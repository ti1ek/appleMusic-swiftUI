//
//  ListCell.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct ListCell: View {
    
    var model: ListModel
    @State private var isShowed = false
    
    var body: some View {
        HStack {
            ZStack {
                Button(action: { toggle() },
                       label: {
                    if isShowed {
                        Image(systemName: Strings.ListCell.selectedImage)
                            .foregroundColor(.red)
                            .background(Color.white)
                            .cornerRadius(20)
                    } else {
                        Image(systemName: Strings.ListCell.image)
                        .foregroundColor(.gray)
                    }
                })
            }
            Image(systemName: model.icon)
                .foregroundColor(.pink)
            //Text(model.name)
        }
    }
    
    func toggle() {
        isShowed.toggle()
    }
}
