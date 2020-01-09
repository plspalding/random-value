//
//  MakeRandom.swift
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

// TODO: Is there a shorter way to write these. Maybe using currying?
func makeRandom<T>(
    _ closure: @escaping () -> T)
    -> () -> T
{
    let result = closure()
    return { result }
}

func makeRandom<A: RandomValueSimple, T>(
    _ closure: @escaping (A) -> T)
    -> () -> T where A.Value == A
{
    let a = A.wrappedRandom()()
    let result = closure(a)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, T>(
    _ closure: @escaping (A, B) -> T)
    -> () -> T where A.Value == A, B.Value == B
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let result = closure(a,b)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, T>(
    _ closure: @escaping (A) -> (B) -> T)
    -> () -> T where A.Value == A, B.Value == B
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let result = closure(a)(b)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, C: RandomValueSimple, T>(
    _ closure: (A, B, C) -> T)
    -> () -> T where A.Value == A, B.Value == B, C.Value == C
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let c = C.wrappedRandom()()
    let result = closure(a,b,c)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, C: RandomValueSimple, D: RandomValueSimple, T>(
    _ closure: (A, B, C, D) -> T)
    -> () -> T where A.Value == A, B.Value == B, C.Value == C, D.Value == D
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let c = C.wrappedRandom()()
    let d = D.wrappedRandom()()
    let result = closure(a,b,c,d)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, C: RandomValueSimple, D: RandomValueSimple, E: RandomValueSimple, T>(
    _ closure: (A, B, C, D, E) -> T)
    -> () -> T where A.Value == A, B.Value == B, C.Value == C, D.Value == D, E.Value == E
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let c = C.wrappedRandom()()
    let d = D.wrappedRandom()()
    let e = E.wrappedRandom()()
    let result = closure(a,b,c,d,e)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, C: RandomValueSimple, D: RandomValueSimple, E: RandomValueSimple, F: RandomValueSimple, T>(
    _ closure: (A, B, C, D, E, F) -> T)
    -> () -> T where A.Value == A, B.Value == B, C.Value == C, D.Value == D, E.Value == E, F.Value == F
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let c = C.wrappedRandom()()
    let d = D.wrappedRandom()()
    let e = E.wrappedRandom()()
    let f = F.wrappedRandom()()
    let result = closure(a,b,c,d,e,f)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, C: RandomValueSimple, D: RandomValueSimple, E: RandomValueSimple, F: RandomValueSimple, G: RandomValueSimple, T>(
    _ closure: (A, B, C, D, E, F,G) -> T)
    -> () -> T where A.Value == A, B.Value == B, C.Value == C, D.Value == D, E.Value == E, F.Value == F, G.Value == G
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let c = C.wrappedRandom()()
    let d = D.wrappedRandom()()
    let e = E.wrappedRandom()()
    let f = F.wrappedRandom()()
    let g = G.wrappedRandom()()
    let result = closure(a,b,c,d,e,f,g)
    return { result }
}

func makeRandom<A: RandomValueSimple, B: RandomValueSimple, C: RandomValueSimple, D: RandomValueSimple, E: RandomValueSimple, F: RandomValueSimple, G: RandomValueSimple, H: RandomValueSimple, T>(
    _ closure: (A, B, C, D, E, F,G,H) -> T)
    -> () -> T where A.Value == A, B.Value == B, C.Value == C, D.Value == D, E.Value == E, F.Value == F, G.Value == G, H.Value == H
{
    let a = A.wrappedRandom()()
    let b = B.wrappedRandom()()
    let c = C.wrappedRandom()()
    let d = D.wrappedRandom()()
    let e = E.wrappedRandom()()
    let f = F.wrappedRandom()()
    let g = G.wrappedRandom()()
    let h = H.wrappedRandom()()
    let result = closure(a,b,c,d,e,f,g,h)
    return { result }
}
