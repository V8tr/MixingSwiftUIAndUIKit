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
        return "Open in Safari"
    }

    override var activityImage: UIImage? {
        return UIImage(systemName: "hand.thumbsup.fill")
    }
    
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return activityItems.contains { $0 is URL }
    }
    
    override func prepare(withActivityItems activityItems: [Any]) {
//        for case let image as UIImage in activityItems {
//            self.sourceImageData = image.pngData()
//            return
//        }
    }
    
    override func perform() {
        // do something
        activityDidFinish(true)
    }
}
