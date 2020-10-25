//
//  NewsView.swift
//  InstaCloneInSwiftUI
//
//  Created by Ramill Ibragimov on 25.10.2020.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack {
            Image(systemName: "globe")
            Text("Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...")
                .font(.footnote)
            Image(systemName: "xmark")
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
