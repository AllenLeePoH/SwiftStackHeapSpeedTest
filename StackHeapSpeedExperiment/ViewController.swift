//
//  ViewController.swift
//  StackHeapSpeedExperiment
//
//  Created by AllenLeePo on 2021/12/16.
//

import UIKit

class ViewController: UIViewController {

    let testSampleTimes = 10
    
    @IBAction func buttonClicked(sender: UIButton) {
        executeTestWithReferenceTypeProperty()
        executeTestWithValueTypeProperty()
    }
    
    func executeTestWithReferenceTypeProperty() {
        var classTestTotalTime: Double = 0
        var structTestTotalTime: Double = 0
        (0...testSampleTimes).forEach { _ in
            measureReferencePropertyClass(totalTime: &classTestTotalTime)
            measureReferencePropertyStruct(totalTime: &structTestTotalTime)
        }
        print("measureReferencePropertyClass average time:\(classTestTotalTime)")
        print("measureReferencePropertyStruct average time:\(structTestTotalTime)")
    }
    
    func executeTestWithValueTypeProperty() {
        var classTestTotalTime: Double = 0
        var structTestTotalTime: Double = 0
        (0...testSampleTimes).forEach { _ in
            measureValuePropertyClass(totalTime: &classTestTotalTime)
            measureValuePropertyStruct(totalTime: &structTestTotalTime)
        }
        print("measureValuePropertyClass average time:\(classTestTotalTime)")
        print("measureValuePropertyStruct average time:\(structTestTotalTime)")
    }
}
