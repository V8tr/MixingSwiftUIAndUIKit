//
//  FontPicker.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/24/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import UIKit
import SwiftUI

struct FontPicker: UIViewControllerRepresentable {
    @Binding var font: UIFontDescriptor?
    
    func makeCoordinator() -> FontPicker.Coordinator {
        return Coordinator(self)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<FontPicker>) -> UIFontPickerViewController {
        return UIFontPickerViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIFontPickerViewController, context: UIViewControllerRepresentableContext<FontPicker>) {
        
    }
}

extension FontPicker {
    class Coordinator {
        var parent: FontPicker

        init(_ parent: FontPicker) {
            self.parent = parent
        }
    }
}
