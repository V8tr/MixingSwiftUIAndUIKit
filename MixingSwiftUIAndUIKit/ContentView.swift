//
//  ContentView.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/22/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        Button("Open activity") {
            self.isPresented = true
        }.sheet(isPresented: $isPresented) {
            ActivityView(activityItems: [URL(string: "https://www.apple.com")!])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
