//
//  RadioSmallSections.swift
//  appleMusic-swiftUI
//
//  Created by ti1ek on 02.07.2023.
//

import SwiftUI

struct RadioSmallSections: View {
    
    var recentModels = RadioScreenModel.recentSectionModels
    var popularModels = RadioScreenModel.poularStantionsSectionModels
    var columns = [
        GridItem(.fixed(280))
    ]
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            Text(Strings.RadioSmallSections.secondSectionText)
                .font(.title)
                .bold()
                .padding(.leading, 15)
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack {
                    ForEach(recentModels, id: \.name) { model in
                        VStack(alignment: .leading) {
                            Image(model.image)
                                .resizable()
                                .frame(width: 180, height: 150)
                                .cornerRadius(25)
                                .padding(5)
                            Text(model.name)
                                .padding(.leading, 10)
                            Text(model.text ?? "")
                                .padding(.leading, 10)
                        }
                    }
                }
            })
            
            HStack {
                Text(Strings.RadioSmallSections.thirdSectionText)
                    .font(.title)
                    .bold()
                    .padding(.leading, 15)
                Image(systemName: "chevron.right")
                    .font(.title3)
                    .padding(.top, 6)
            }
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(popularModels, id: \.name) { model in
                        VStack(alignment: .leading) {
                            Image(model.image)
                                .resizable()
                                .frame(width: 200, height: 150)
                                .cornerRadius(25)
                                .padding(5)
                            
                            Text(model.name)
                                .padding(.leading, 10)
                            
                            Text(model.text ?? "")
                                .padding(.leading, 10)
                        }
                    }
                }
            })
        }
    }
}

struct RadioSmallSections_Previews: PreviewProvider {
    static var previews: some View {
        RadioSmallSections()
    }
}
