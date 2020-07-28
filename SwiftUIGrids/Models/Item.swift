//
//  Item.swift
//  SwiftUIGrids
//
//  Created by Alfian Losari on 26/07/20.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
}

extension Item {
    
    static var stubs: [Item] {
        (0...31).map {
            Item(
                title: "Title: \($0)",
                subtitle: "Subtitle: \($0)",
                imageName: "image-\($0)"
            )
        }
    }
}
