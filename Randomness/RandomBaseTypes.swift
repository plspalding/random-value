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

extension Int: RandomValue, RandomValueSimple {
    
    static func wrappedRandom(in range: ClosedRange<Int>) -> () -> Int {
        let r = Int.random(in: range)
        return { return r }
    }
    
    static func closedRange() -> ClosedRange<Int> {
        return .min...Int.max
    }
}

extension String: RandomValue, RandomValueSimple {
    
    // TODO: Think I need to add a protocol just for handling string values???
    // These implementations needs to be changed!!!
    
    static func closedRange() -> ClosedRange<String> {
        return ""..."abc"
    }
    
    static func wrappedRandom(in range: ClosedRange<String>) -> () -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let s = String((0..<Int.random(in: 0...100)).map { _ in letters.randomElement()! })
        return { s }
    }
}

extension Bool: RandomValueSimple {
    
    static func wrappedRandom() -> Bool {
        return wrappedRandom()()
    }
    
    static func wrappedRandom() -> () -> Bool {
        let r = Bool.random()
        return { r }
    }
}

//extension Double: RandomValue {
//    static func wrappedRandom(in range: ClosedRange<Double>) -> () -> Double {
//        let r = Double.random(in: range)
//        return { r }
//    }
//}

//extension Float: RandomValue {
//    static func wrappedRandom(in range: ClosedRange<Float>) -> () -> Float {
//        let r = Float.random(in: range)
//        return { r }
//    }
//}
//
extension Int8: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<Int8>) -> () -> Int8 {
        let r = Int8.random(in: range)
        return { r }
    }

    static func closedRange() -> ClosedRange<Int8> {
        return .min...Int8.max
    }
}

extension Int16: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<Int16>) -> () -> Int16 {
        let r = Int16.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<Int16> {
        return .min...Int16.max
    }
}

extension Int32: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<Int32>) -> () -> Int32 {
        let r = Int32.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<Int32> {
        return .min...Int32.max
    }
}

extension Int64: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<Int64>) -> () -> Int64 {
        let r = Int64.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<Int64> {
        return .min...Int64.max
    }
}

extension UInt: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<UInt>) -> () -> UInt {
        let r = UInt.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<UInt> {
        return .min...UInt.max
    }
}

extension UInt8: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<UInt8>) -> () -> UInt8 {
        let r = UInt8.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<UInt8> {
        return .min...UInt8.max
    }
}


extension UInt16: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<UInt16>) -> () -> UInt16 {
        let r = UInt16.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<UInt16> {
        return .min...UInt16.max
    }
}

extension UInt32: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<UInt32>) -> () -> UInt32 {
        let r = UInt32.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<UInt32> {
        return .min...UInt32.max
    }
}

extension UInt64: RandomValue, RandomValueSimple {
    static func wrappedRandom(in range: ClosedRange<UInt64>) -> () -> UInt64 {
        let r = UInt64.random(in: range)
        return { r }
    }
    
    static func closedRange() -> ClosedRange<UInt64> {
        return .min...UInt64.max
    }
}

struct Person {
    let name: String
    let age: Int
    let score: Int
}

extension Person: RandomValueSimple {
    static func wrappedRandom() -> () -> Person {
        return makeRandom(Person.init)
    }
    
    typealias Value = Person
    
    
}
