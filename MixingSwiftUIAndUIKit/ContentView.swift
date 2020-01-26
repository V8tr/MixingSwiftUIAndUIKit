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
    @State private var font: UIFontDescriptor?
    
    var body: some View {
        VStack {
            Text(font?.description ?? "")
            Button("Pick a font") {
                self.isPresented = true
            }
        }.sheet(isPresented: $isPresented) {
            FontPicker(font: self.$font)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
