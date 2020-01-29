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

//https://github.com/bvankuik/WebViewVideoPlayerSwiftUI/blob/master/WebViewVideoPlayer/WebView.swift
struct WebView: UIViewRepresentable {
    
    enum State {
        case initial(URL)
        case idle
        case loading(URL)
        case error(Error)
    }
    
    @Binding var state: State
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        switch state {
        case .initial(let url):
            webView.load(URLRequest(url: url))
        default:
            break
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

extension WebView {
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView
        
        init(_ parent: WebView) {
            self.parent = parent
        }
        
        // MARK: - WKNavigationDelegate
        
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            webView.url.map { parent.state = .loading($0) }
        }
        
        func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
            webView.url.map { parent.state = .loading($0) }
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            parent.state = .idle
        }
        
        func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
            parent.state = .error(error)
        }
        
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            parent.state = .error(error)
        }
    }
}
