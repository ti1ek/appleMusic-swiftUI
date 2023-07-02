//
//  RadioTopSections.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct RadioTopSections: View {
    
    var models = RadioScreenModel.bigSectionModels
    
    var columns = [
        GridItem(.fixed(280))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: columns) {
                ForEach(models, id: \.name) { row in
                    VStack(alignment: .leading){
                        Text(row.title ?? "")
                            .foregroundColor(.gray)
                        Text(row.name)
                            .bold()
                        Text(row.text ?? "")
                        ZStack(alignment: .topLeading) {
                            Image(row.image)
                                .resizable()
                                .frame(width: 350, height: 240)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct RadioBigSections_Previews: PreviewProvider {
    static var previews: some View {
        RadioTopSections()
    }
}
