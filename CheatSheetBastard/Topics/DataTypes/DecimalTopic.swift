//
//  DecimalTopic.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2022-01-05.
//

import Foundation

class DecimalTopic: Topic {
    init() {
        super.init("Decimal")
        description = """
Datatyp för decimaltal
Engelska: Floating point number.
För de språk som har flera typer för decimaltal, brukar typen som heter float räkna snabbare men med lägre noggranhet (dvs avrundningsfel blir större).
"""
    }
}
