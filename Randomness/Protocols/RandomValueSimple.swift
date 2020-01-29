//
//  RandomValueSimple.swift
//  Randomness
//
//  Created by Preston Spalding on 09/01/2020.
//  Copyright © 2020 Preston Spalding. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

protocol RandomValueSimple {
    associatedtype Value
    static func random() -> Value
    
    static func boolValue() -> Bool
    
    static func intRange() -> ClosedRange<Int>
    static func int8Range() -> ClosedRange<Int8>
    static func int16Range() -> ClosedRange<Int16>
    static func int32Range() -> ClosedRange<Int32>
    static func int64Range() -> ClosedRange<Int64>
    
    static func uIntRange() -> ClosedRange<UInt>
    static func uInt8Range() -> ClosedRange<UInt8>
    static func uInt16Range() -> ClosedRange<UInt16>
    static func uInt32Range() -> ClosedRange<UInt32>
    static func uInt64Range() -> ClosedRange<UInt64>
    
    static func floatRange() -> ClosedRange<Float>
    static func doubleRange() -> ClosedRange<Double>
}

extension RandomValueSimple where Self: RandomValue {
    static func random() -> Self.Value {
        return random(in: Self.closedRange())
    }
}

extension RandomValueSimple {
    
    static func boolValue() -> Bool {
        .random()
    }
    
    static func intRange() -> ClosedRange<Int> {
        .min...Int.max
    }
    
    static func int8Range() -> ClosedRange<Int8>{
        .min...Int8.max
    }
    
    static func int16Range() -> ClosedRange<Int16> {
        .min...Int16.max
    }
    
    static func int32Range() -> ClosedRange<Int32> {
        .min...Int32.max
    }
    
    static func int64Range() -> ClosedRange<Int64> {
        .min...Int64.max
    }
    
    static func uIntRange() -> ClosedRange<UInt> {
        .min...UInt.max
    }
    
    static func uInt8Range() -> ClosedRange<UInt8> {
        .min...UInt8.max
    }
    
    static func uInt16Range() -> ClosedRange<UInt16> {
        .min...UInt16.max
    }
    
    static func uInt32Range() -> ClosedRange<UInt32> {
        .min...UInt32.max
    }
    
    static func uInt64Range() -> ClosedRange<UInt64> {
        .min...UInt64.max
    }
    
    static func floatRange() -> ClosedRange<Float> {
        -Float.greatestFiniteMagnitude...Float.greatestFiniteMagnitude
    }
    static func doubleRange() -> ClosedRange<Double> {
        -Double.greatestFiniteMagnitude...Double.greatestFiniteMagnitude
    }
}
