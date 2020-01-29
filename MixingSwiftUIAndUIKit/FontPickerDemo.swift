//
//  FontPickerDemo.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/29/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import SwiftUI

struct FontPickerDemo: View {
    @State private var isPresented = false
    @State private var font: UIFontDescriptor?
    
    var body: some View {
        VStack(spacing: 30) {
            Text(font?.postscriptName ?? "")
            Button("Pick a font") {
                self.isPresented = true
            }
        }.sheet(isPresented: $isPresented) {
            FontPicker(font: self.$font)
        }
    }
}
