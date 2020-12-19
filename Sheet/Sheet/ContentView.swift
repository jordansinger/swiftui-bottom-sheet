//
//  ContentView.swift
//  Sheet
//
//  Created by Jordan Singer on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.blue.edgesIgnoringSafeArea(.all)
            SheetView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
