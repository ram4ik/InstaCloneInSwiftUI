//
//  NavView.swift
//  InstaCloneInSwiftUI
//
//  Created by Ramill Ibragimov on 25.10.2020.
//

import SwiftUI

struct NavView: View {
    var colWidth: CGFloat
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth))
        ]) {
            Spacer()
            
            Text("InstaClone")
                .font(.custom("SyneTactile-Regular", size: 30))
            
            Image(systemName: "paperplane")
        }
    }
}

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
