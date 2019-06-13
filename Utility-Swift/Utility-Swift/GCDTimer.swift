//
//  GCDTimer.swift
//  Utility-Swift
//
//  Created by apple on 2018/3/27.
//  Copyright © 2018年 Pszertlek. All rights reserved.
//

import Foundation

public class GCDTimer {
    private(set) var start: TimeInterval
    private(set) var interval: TimeInterval
    private(set) var target: AnyObject
    private(set) var selector: Selector
    private(set) var repeats: Bool
    private var source: DispatchSource.TimerFlags?
    private var lock: DispatchSemaphore = DispatchSemaphore.init(value: 1)
    init(start: TimeInterval, interval: TimeInterval, target: AnyObject, selector: Selector, repeats: Bool) {
        self.start = start
        self.interval = interval
        self.target = target
        self.selector = selector
        self.repeats = repeats
        source = DispatchSource.TimerFlags.init(rawValue: 0)

    }
    
    func invalidate() {
        
    }
    
    func fire() {
        
    }
}
