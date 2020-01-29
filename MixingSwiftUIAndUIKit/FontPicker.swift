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
    @Environment(\.presentationMode) var presentationMode
    
    func makeCoordinator() -> FontPicker.Coordinator {
        return Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIFontPickerViewController {
        let picker = UIFontPickerViewController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIFontPickerViewController, context: Context) {
        
    }
}

extension FontPicker {
    class Coordinator: NSObject, UIFontPickerViewControllerDelegate {
        var parent: FontPicker
        @Environment(\.presentationMode) var presentationMode
        
        init(_ parent: FontPicker) {
            self.parent = parent
        }
        
        func fontPickerViewControllerDidCancel(_ viewController: UIFontPickerViewController) {
            
        }

        func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
            parent.font = viewController.selectedFontDescriptor
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
