//
//  ReactNativeViewController.swift
//
//
//  Created by Gaurav Rawat on 03/06/24.
//
import UIKit
import React

class ReactNativeViewController: UIViewController {

        var initialProps: NSDictionary =  ["initialProps": ["action": "button","platform": "ios"]]

    
    func updateProps(_ name: NSDictionary){
        self.initialProps = name
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let jsCodeLocation: URL
        jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")

        let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "RNHighScores", initialProperties: initialProps as! [AnyHashable : Any], launchOptions: nil)
        rootView.frame = self.view.bounds
        self.view.addSubview(rootView)
    }
}
