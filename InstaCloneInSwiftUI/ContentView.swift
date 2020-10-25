//
//  ContentView.swift
//  InstaCloneInSwiftUI
//
//  Created by Ramill Ibragimov on 25.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    var people: [Person] = [
        Person(name: "Mr Glasses", image: "person.crop.circle.badge.checkmark"),
        Person(name: "Mr Long Hair", image: "person.crop.circle.badge.checkmark"),
        Person(name: "Mrs Lady", image: "person.crop.circle.badge.checkmark"),
        Person(name: "Mr Old", image: "person.crop.circle.badge.checkmark"),
        Person(name: "Mr Young", image: "person.crop.circle.badge.checkmark"),
    ]
    
    var body: some View {
        GeometryReader { geometry in
            
            let colWidth = geometry.size.width / 3
            
            TabView {
                NavigationView {
                    VStack {
                        NavView(colWidth: colWidth)

                        ScrollView {
                            ThumbView(people: people)
                        }
                    }
                    .navigationBarHidden(true)
                }
                .tabItem {
                    Image(systemName: "house.fill")
                }
                
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "camera")
                }
                
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "heart")
                }
                
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "person")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
