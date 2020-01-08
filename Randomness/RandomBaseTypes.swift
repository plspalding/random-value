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

extension Int: RandomValue {
    static func wrapRandom(in range: ClosedRange<Int>) -> () -> Int {
        let r = Int.random(in: range)
        return { return r }
    }
}

extension String: RandomValue {
    static func wrapRandom(in range: ClosedRange<String>) -> () -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let s = String((0..<Int.random(in: 1..<100)).map { _ in letters.randomElement()! })
        return { s }
    }
}

extension Bool: RandomValue {
    static func wrapRandom(in range: ClosedRange<Bool>) -> () -> Bool {
        let r = Bool.random()
        return { r }
    }
}

extension Bool: Comparable {
    public static func < (lhs: Bool, rhs: Bool) -> Bool {
        return false
    }
}


extension Double: RandomValue {
    static func wrapRandom(in range: ClosedRange<Double>) -> () -> Double {
        let r = Double.random(in: range) // TODO: need to use a passed in ClosedRange of double.
        return { r }
    }
}

extension Float: RandomValue {
    static func wrapRandom(in range: ClosedRange<Float>) -> () -> Float {
        let r = Float.random(in: range) // TODO: need to use a passed in ClosedRange of Float.
        return { r }
    }
}

extension Int8: RandomValue {
    static func wrapRandom(in range: ClosedRange<Int8>) -> () -> Int8 {
        let r = Int8.random(in: range) // TODO: need to use a passed in ClosedRange of Int8.
        return { r }
    }
}

extension Int16: RandomValue {
    static func wrapRandom(in range: ClosedRange<Int16>) -> () -> Int16 {
        let r = Int16.random(in: range) // TODO: need to use a passed in ClosedRange of Int16.
        return { r }
    }
}

extension Int32: RandomValue {
    static func wrapRandom(in range: ClosedRange<Int32>) -> () -> Int32 {
        let r = Int32.random(in: range) // TODO: need to use a passed in ClosedRange of Int32.
        return { r }
    }
}

extension Int64: RandomValue {static func wrapRandom(in range: ClosedRange<Int64>) -> () -> Int64 {
        let r = Int64.random(in: range) // TODO: need to use a passed in ClosedRange of Int64.
        return { r }
    }}

extension UInt: RandomValue {
    static func wrapRandom(in range: ClosedRange<UInt>) -> () -> UInt {
        let r = UInt.random(in: range) // TODO: need to use a passed in ClosedRange of UInt.
        return { r }
    }
}

extension UInt8: RandomValue {
    static func wrapRandom(in range: ClosedRange<UInt8>) -> () -> UInt8 {
        let r = UInt8.random(in: range) // TODO: need to use a passed in ClosedRange of UInt8.
        return { r }
    }
}


extension UInt16: RandomValue {
    static func wrapRandom(in range: ClosedRange<UInt16>) -> () -> UInt16 {
        let r = UInt16.random(in: 1...10) // TODO: need to use a passed in ClosedRange of UInt16.
        return { r }
    }
}

extension UInt32: RandomValue {
    static func wrapRandom(in range: ClosedRange<UInt32>) -> () -> UInt32 {
        let r = UInt32.random(in: 1...10) // TODO: need to use a passed in ClosedRange of UInt32.
        return { r }
    }
}

extension UInt64: RandomValue {
    static func wrapRandom(in range: ClosedRange<UInt64>) -> () -> UInt64 {
        let r = UInt64.random(in: 1...10) // TODO: need to use a passed in ClosedRange of UInt64.
        return { r }
    }
}

