//
//  ContentView.swift
//  LazyHGridExampleInSwiftUI
//
//  Created by Ramill Ibragimov on 15.01.2021.
//

import SwiftUI

struct ContentView: View {
    let data = (0...1000).map { "Result \($0)" }
    let rows = [GridItem(.adaptive(minimum: 50))]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows) {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                            .font(.title)
                            .foregroundColor(.blue)
                    }
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
