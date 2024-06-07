//
//  ViewController.swift
//  swift-2048
//
//  Created by Austin Zheng on 6/3/14.
//  Copyright (c) 2014 Austin Zheng. Released under the terms of the MIT license.
//

import UIKit
import React


class ViewController: UIViewController {
                            
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func startGameButtonTapped(_ sender : UIButton) {
      let reactNativeVC = ReactNativeViewController()
      self.navigationController?.pushViewController(reactNativeVC, animated: true)
  }
    
    @IBAction func highScoreButtonTapped(sender : UIButton) {
      NSLog("Hello")
        //Make the design as navigation (
        
//        Open your storyboard.
//        Select SomeViewController.
//        Go to Editor > Embed In > Navigation Controller.
//)
        let reactNativeVC = ReactNativeViewController()
        reactNativeVC.updateProps(["scores":
                                    [
                                        ["name":"Gaurav", "value":"22"],
                                        ["name":"Rawat", "value":"22"]
                                    ]
                                ])
        self.navigationController?.pushViewController(reactNativeVC, animated: true)

//             self.present(reactNativeVC, animated: true, completion: nil) // use this if you don't want to navigate to that screen
//
//      let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
//      let mockData:NSDictionary = ["scores":
//          [
//              ["name":"Alex", "value":"42"],
//              ["name":"Joel", "value":"10"]
//          ]
//      ]
//
//      let rootView = RCTRootView(
//          bundleURL: jsCodeLocation,
//          moduleName: "RNHighScores",
//          initialProperties: mockData as [NSObject : AnyObject],
//          launchOptions: nil
//      )
//      let vc = UIViewController()
//      vc.view = rootView
//        vc.modalPresentationStyle = .fullScreen
//      self.present(vc, animated: true, completion: nil)
    }
}

