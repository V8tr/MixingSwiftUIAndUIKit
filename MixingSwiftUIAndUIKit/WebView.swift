//
//  WebView.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadim Bulavin on 1/28/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import SwiftUI
import WebKit
import UIKit

https://github.com/kylehickinson/SwiftUI-WebView/blob/master/Sources/WebView/WebView.swift
struct WebView: UIViewRepresentable {
    @ObservedObject var state: State

    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}

extension WebView {
    class Coordinator: NSObject, WKNavigationDelegate {}
}

extension WebView {
    class State: ObservableObject {
        
    }
}
