//
//  ReactNativeViewController.swift
//
//
//  Created by Gaurav Rawat on 03/06/24.
//
import UIKit
import React

class ReactNativeViewController: UIViewController {
          var mockData:NSDictionary = ["scores":
              [
                  ["name":"Alex", "value":"42"],
                  ["name":"Joel", "value":"10"]
              ]
          ]

    func updateProps(_ name: NSDictionary){
        self.mockData = name
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let jsCodeLocation: URL
    #if DEBUG
print("hii debug")
//      jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil)

              #else
        print("hii release")

//        jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
              #endif
        
        
        jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")

              let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "RNHighScores", initialProperties: mockData as [NSObject : AnyObject], launchOptions: nil)
        rootView.frame = self.view.bounds
        self.view.addSubview(rootView)
    }
}
