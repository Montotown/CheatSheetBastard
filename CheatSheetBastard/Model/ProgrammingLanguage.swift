//
//  ProgrammingLanguage.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2021-07-31.
//

import Foundation

enum ProgrammingLanguage: String, CaseIterable, Identifiable {
    case Swift
    case CSharp = "C#"
    case CPlusPlus = "C++"
    case Python

    var id: String { self.rawValue }
}


