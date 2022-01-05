//
//  IntegerTopic.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2022-01-05.
//

import Foundation

class IntegerTopic: Topic {
    init() {
        super.init("Integer")
        description = """
Datatyp för heltal
Engelska: Integer
"""
        example[.Swift] = """
// Name: Int
// Value type
// Literal value example: 313

var num: Int = 0    // type annotated
var number = 1      // type Int infered
number = 2

var otherNumber: Int

// compiler error, types doesn't match
var ugh: Int = "1"

// Nice, but redeclaration compiler error
var number = 69

// typo, compiler error, undeclared identifier
nomber = 42

// compiler error, wrong type
number = "2"
"""
        example[.CSharp] = """
// Name: int
// Literal value example: 313
"""
        
        example[.CPlusPlus] = """
// Name: int
// Literal value example: 313
"""
        
        example[.Python] = """
# Name: int
# Literal value example: 313

number = 1      // type int infered

// typo, no compiler error, new variable declared
nomber = 42

// run-time error, wrong type
number = "2"
"""
    }
}
