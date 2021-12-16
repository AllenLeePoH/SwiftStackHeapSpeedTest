//
//  ValueTypeTestObject.swift
//  StackHeapSpeedExperiment
//
//  Created by AllenLeePo on 2021/12/16.
//

import Foundation

class Int10Class {
    let value1, value2, value3, value4, value5, value6, value7, value8, value9, value10: Int
    init(_ val: Int) {
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

struct Int10Struct {
    let value1, value2, value3, value4, value5, value6, value7, value8, value9, value10: Int
    init(_ val: Int) {
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

func + (x: Int10Class, y: Int10Class) -> Int10Class {
    return Int10Class(x.value1 + y.value1)
}

func + (x: Int10Struct, y: Int10Struct) -> Int10Struct {
    return Int10Struct(x.value1 + y.value1)
}

func measureValuePropertyClass(totalTime: inout CFTimeInterval) {
    totalTime = measure(name: "class (10 value type fields)",
                        isLogEnable: IS_LOG_ENABLE_IN_MEASURE) {
        var x = Int10Class(0)
        for _ in 1...Test_Loop_Times {
            x = x + Int10Class(1)
        }
    }
}

func measureValuePropertyStruct(totalTime: inout CFTimeInterval) {
    totalTime = measure(name: "struct (10 value type fields)",
                        isLogEnable: IS_LOG_ENABLE_IN_MEASURE) {
        var y = Int10Struct(0)
        for _ in 1...Test_Loop_Times {
            y = y + Int10Struct(1)
        }
    }
}
