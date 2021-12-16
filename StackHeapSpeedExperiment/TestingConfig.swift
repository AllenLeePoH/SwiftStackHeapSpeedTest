//
//  TestingConfig.swift
//  StackHeapSpeedExperiment
//
//  Created by AllenLeePo on 2021/12/16.
//

import UIKit

let Test_Loop_Times = 60000
let IS_LOG_ENABLE_IN_MEASURE = false

func measure(name: String, isLogEnable: Bool, block: () -> ()) -> CFTimeInterval {
    let t0 = CACurrentMediaTime()

    block()

    let dt = CACurrentMediaTime() - t0
    
    if isLogEnable {
        print("\(name) -> \(dt)")
    }
    
    return dt
}
