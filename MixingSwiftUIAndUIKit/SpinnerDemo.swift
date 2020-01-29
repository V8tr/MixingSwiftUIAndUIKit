//
//  SpinnerDemo.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/29/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import SwiftUI

struct SpinnerDemo: View {
    @State private var isAnimating = false

    var toggle: some View {
        Toggle(isOn: $isAnimating) { EmptyView() }
            .labelsHidden()
    }
    
    var body: some View {
        VStack(spacing: 30) {
            toggle
            Spinner(isAnimating: isAnimating, style: .large)
        }
    }
}
