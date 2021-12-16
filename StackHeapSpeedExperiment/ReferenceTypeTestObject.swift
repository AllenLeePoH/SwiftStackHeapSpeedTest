//
//  ReferenceTypeTestObject.swift
//  StackHeapSpeedExperiment
//
//  Created by AllenLeePo on 2021/12/16.
//

import Foundation
import UIKit

class Ref10Class {
    let value1, value2, value3, value4, value5, value6, value7, value8, value9, value10: UIFont
    init(_ val: UIFont) {
        self.value1 = val
        self.value2 = val
        self.value3 = val
        self.value4 = val
        self.value5 = val
        self.value6 = val
        self.value7 = val
        self.value8 = val
        self.value9 = val
        self.value10 = val
    }
}

struct Ref10Struct {
    let value1, value2, value3, value4, value5, value6, value7, value8, value9, value10: UIFont
    init(_ val: UIFont) {
        self.value1 = val
        self.value2 = val
        self.value3 = val
        self.value4 = val
        self.value5 = val
        self.value6 = val
        self.value7 = val
        self.value8 = val
        self.value9 = val
        self.value10 = val
    }
}

func + (x: Ref10Class, y: Ref10Class) -> Ref10Class {
    return Ref10Class(UIFont.systemFont(ofSize: x.value1.pointSize + y.value1.pointSize))
}

func + (x: Ref10Struct, y: Ref10Struct) -> Ref10Struct {
    return Ref10Struct(UIFont.systemFont(ofSize: x.value1.pointSize + y.value1.pointSize))
}

func measureReferencePropertyClass(totalTime: inout CFTimeInterval) {
    totalTime = measure(name: "class (10 reference type fields)",
                        isLogEnable: IS_LOG_ENABLE_IN_MEASURE) {
        var x = Ref10Class(UIFont.systemFont(ofSize: 1))
        for _ in 1...Test_Loop_Times {
            x = x + Ref10Class(UIFont.systemFont(ofSize: 2))
        }
    }
}

func measureReferencePropertyStruct(totalTime: inout CFTimeInterval) {
    totalTime = measure(name: "struct (10 reference type fields)",
                        isLogEnable: IS_LOG_ENABLE_IN_MEASURE) {
        var y = Ref10Struct(UIFont.systemFont(ofSize: 1))
        for _ in 1...Test_Loop_Times {
            y = y + Ref10Struct(UIFont.systemFont(ofSize: 2))
        }
    }
}
