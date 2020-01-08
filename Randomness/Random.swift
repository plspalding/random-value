//
//  Random.swift
//  Randomness
//
//  Created by Preston Spalding on 08/01/2020.
//  Copyright © 2020 Preston Spalding. All rights reserved.
//

import Foundation

typealias Generator<T> = () -> T

protocol RandomValue {
    associatedtype Value where Value: Comparable
    static func wrapRandom(in range: ClosedRange<Value>) -> () -> Value
}

func makeRandom<T: RandomValue>(
    type _: T.Type,
    range: ClosedRange<T>,
    quantity: Int)
    -> [Generator<T>] where T.Value == T
{
    
    var array: [Generator<T>] = []
    for _ in 1...quantity {
        let r = T.wrapRandom(in: range)
        array.append(r)
    }
    return array
}

func these<T: Equatable>(
    results: [Generator<T>],
    equal theseResults: [() -> T])
{
    let r = results.map { $0() }
    let r1 = results.map { $0() }
    
    if r == r1 { print("") } else { print("") }
}

