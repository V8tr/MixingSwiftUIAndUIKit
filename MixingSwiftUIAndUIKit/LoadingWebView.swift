//
//  LoadingWebView.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/29/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import SwiftUI

struct LoadingWebView: View {
    @State private var state: WebView.State
    
    var isLoading: Bool {
        switch state {
        case .loading, .initial:
            return true
        default:
            return false
        }
    }
    
    init(url: URL) {
        _state = .init(initialValue: .initial(url))
    }
    
    var body: some View {
        ZStack {
            WebView(state: $state)
            Spinner(isAnimating: isLoading, style: .large)
        }
    }
}
