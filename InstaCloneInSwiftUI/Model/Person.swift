//
//  Person.swift
//  InstaCloneInSwiftUI
//
//  Created by Ramill Ibragimov on 25.10.2020.
//

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
}
