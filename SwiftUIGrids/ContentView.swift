//
//  ContentView.swift
//  SwiftUIGrids
//
//  Created by Alfian Losari on 23/07/20.
//

import SwiftUI

struct ContentView: View {

    var items = Item.stubs
    @State var selectedLayout: LayoutType = .single
    
    var body: some View {
        VStack {
            Picker("Layout Style", selection: $selectedLayout) {
                ForEach(LayoutType.allCases, id: \.self) { type in
                    switch type {
                    case .single:
                        Image(systemName: "list.bullet")
                    case .double:
                        Image(systemName: "square.grid.2x2")
                    case .adaptive:
                        Image(systemName: "square.grid.3x3")
                    }
                }
            }.pickerStyle(SegmentedPickerStyle())
            .padding(.all, 10)
            
            ScrollView {
                LazyVGrid(columns: selectedLayout.columns, spacing: 1, content: {
                    ForEach(items) { (item)  in
                        switch selectedLayout {
                        case .single:
                            SingleRow(
                                imageName: item.imageName,
                                title: item.title,
                                subtitle: item.subtitle
                            ).padding(.horizontal, 16)
                            .padding(.vertical, 8)
                            
                        default:
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                    }
                })
                .animation(.default)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(selectedLayout: .single)
            ContentView(selectedLayout: .double)
            ContentView(selectedLayout: .adaptive)
        }
    }
}
