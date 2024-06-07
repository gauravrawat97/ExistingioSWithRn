//
//  MyNativeModule.m
//  swift-2048
//
//  Created by Gaurav Rawat on 03/06/24.
//  Copyright © 2024 Austin Zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(MyNativeModule, NSObject)

RCT_EXTERN_METHOD(myNativeFunction:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)

@end
