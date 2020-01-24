//
//  CollectionView.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/24/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import UIKit
import SwiftUI

struct CollectionView: UIViewControllerRepresentable {

//    let activityItems: [Any]
//    var applicationActivities: [UIActivity]? = nil

    func makeUIViewController(context: UIViewControllerRepresentableContext<CollectionView>) -> UICollectionViewController {
        return UICollectionViewController()
    }

    func updateUIViewController(_ uiViewController: UICollectionViewController, context: UIViewControllerRepresentableContext<CollectionView>) {
        
    }
}
