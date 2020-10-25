//
//  ThumbView.swift
//  InstaCloneInSwiftUI
//
//  Created by Ramill Ibragimov on 25.10.2020.
//

import SwiftUI

struct ThumbView: View {
    var people: [Person]
    
    var body: some View {
        VStack(alignment: .leading) {
            NewsView()
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    VStack {
                        Image(systemName: "person.crop.circle.fill.badge.plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 65)
                            .foregroundColor(.secondary)
                            .opacity(0.8)
                            .colorInvert()
                        Text("Your story")
                    }
                    .padding(.horizontal, 20)
                    
                    ForEach(people, id: \.id) { person in
                        VStack {
                            Image(systemName: person.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 65)
                            Text(person.name)
                        }
                        .padding(.trailing, 20)
                    }
                }
            }
        }
    }
}
