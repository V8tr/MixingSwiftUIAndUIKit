//
//  ActivityView.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/23/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import UIKit
import SwiftUI

struct ActivityView: UIViewControllerRepresentable {
    
    let activityItems: [Any]
//    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        let activity = UIActivityViewController(activityItems: activityItems, applicationActivities: [MyActivity()])
        return activity
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityView>) {
        
    }
    
    func makeCoordinator() -> ActivityView.Coordinator {
        return Coordinator()
    }
    
    class Coordinator {
        
    }
}
