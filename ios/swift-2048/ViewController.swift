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
        reactNativeVC.updateProps(["initialProps": ["action": "second button","platform": "ios"]])
        self.navigationController?.pushViewController(reactNativeVC, animated: true)

    }
}

