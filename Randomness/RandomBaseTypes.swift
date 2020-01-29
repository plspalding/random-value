//
//  RandomBaseTypes.swift
//  Randomness
//
//  Created by Preston Spalding on 08/01/2020.
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

// Create Random value string or something as doesn't fit in random value
extension String: RandomValue, RandomValueSimple {
    static func random(in range: Range<String>) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let s = String((0..<Int.random(in: 0...100)).map { _ in letters.randomElement()! })
        return s
    }
    
    static func random(in range: ClosedRange<String>) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let s = String((0..<Int.random(in: 0...100)).map { _ in letters.randomElement()! })
        return s
    }
    
    static func closedRange() -> ClosedRange<String> {
        return ""..."abc"
    }
}

extension Bool: RandomValueSimple {
    static func random() -> Self {
        boolValue()
    }
}


extension Float: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<Float> {
        Self.floatRange()
    }
}

extension Double: RandomValue , RandomValueSimple{
    static func closedRange() -> ClosedRange<Double> {
        Self.doubleRange()
    }
}

extension Int: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<Int> {
        Self.intRange()
    }
}

extension Int8: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<Int8> {
        Self.int8Range()
    }
}
extension Int16: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<Int16> {
        Self.int16Range()
    }
}
extension Int32: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<Int32> {
        Self.int32Range()
    }
}
extension Int64: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<Int64> {
        Self.int64Range()
    }
}
extension UInt: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<UInt> {
        Self.uIntRange()
    }
}
extension UInt8: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<UInt8> {
        Self.uInt8Range()
    }
}
extension UInt16: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<UInt16> {
        Self.uInt16Range()
    }
}
extension UInt32: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<UInt32> {
        Self.uInt32Range()
    }
}
extension UInt64: RandomValue, RandomValueSimple {
    static func closedRange() -> ClosedRange<UInt64> {
        Self.uInt64Range()
    }
}
