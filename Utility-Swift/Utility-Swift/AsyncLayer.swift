//
//  AsyncLayer.swift
//  Utility-Swift
//
//  Created by apple on 2018/3/27.
//  Copyright © 2018年 Pszertlek. All rights reserved.
//

import UIKit

protocol AsyncLayerDelegate: NSObjectProtocol {
    func newAsyncDisplayTask() -> AsyncLayerDisplayTask
}

class AsyncLayer: CALayer {
    var displaysAsynchronously: Bool = true
    
}

class Sentinel {
    private(set) var value: Int32 = 0
    func increase() -> Int32 {
        OSAtomicIncrement32(&value);
    }
}

class AsyncLayerDisplayTask: NSObject {
    var willDisplay: ((CALayer) -> Void)?
    var display: ((CGContext,Bool,() -> Bool) -> Void)?
    var didDisplay: ((CALayer,Bool) -> Void)?
}
