//
//  MyNativeModule.swift
//  swift-2048
//
//  Created by Gaurav Rawat on 03/06/24.
//  Copyright © 2024 Austin Zheng. All rights reserved.
//
import Foundation

@objc(MyNativeModule)
class MyNativeModule: NSObject {

  @objc
  static func requiresMainQueueSetup() -> Bool {
    return false
  }

  @objc
  func myNativeFunction(_ resolve: RCTPromiseResolveBlock, rejecter reject: RCTPromiseRejectBlock) {
    // Your native function implementation
    let response = "Hello from native module"
    resolve(response)
  }
}
