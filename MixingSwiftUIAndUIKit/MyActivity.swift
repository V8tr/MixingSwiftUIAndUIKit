//
//  MyActivity.swift
//  MixingSwiftUIAndUIKit
//
//  Created by Vadym Bulavin on 1/24/20.
//  Copyright © 2020 Vadym Bulavin. All rights reserved.
//

import UIKit

class MyActivity: UIActivity {
    override class var activityCategory: UIActivity.Category {
        return .action
    }

    override var activityType: UIActivity.ActivityType? {
        return .init("com.v8tr.myactivity")
    }

    override var activityTitle: String? {
        return "My Activity"
    }

    override var activityImage: UIImage? {
        return UIImage(systemName: "hand.thumbsup.fill")
    }
    
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
//        for case is UIImage in activityItems {
//            return true
//        }
        return true
    }
    
    override func prepare(withActivityItems activityItems: [Any]) {
//        for case let image as UIImage in activityItems {
//            self.sourceImageData = image.pngData()
//            return
//        }
    }
    
    override func perform() {
//        let url = URL(string: "https://mustachify.app/")!
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.httpBody = self.sourceImageData
//
//        URLSession.shared.dataTask(with: request) { (data, _, error) in
//            guard error == nil else {
//                self.activityDidFinish(false)
//                return
//            }
//
//            if let data = data,
//                let image = UIImage(data: data)
//            {
//                self.mustachioedImage = image
//                self.activityDidFinish(true)
//            } else {
//                self.activityDidFinish(false)
//            }
//        }
    }
}
