//
//  SingleRow.swift
//  SwiftUIGrids
//
//  Created by Alfian Losari on 26/07/20.
//

import SwiftUI

struct SingleRow: View {
    
    let imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(3)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                Text(subtitle)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
    
}

struct SingleRow_Previews: PreviewProvider {
    static var previews: some View {
        SingleRow(imageName: "image", title: "title", subtitle: "subtitle")
    }
}
