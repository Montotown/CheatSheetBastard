//
//  Topic.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2022-01-05.
//

import Foundation

class Topic {
    let title: String
    var description: String?
    var bnf: [ProgrammingLanguage: String] = [:]
    var example: [ProgrammingLanguage: String] = [:]

    init(_ title: String) {
        self.title = title
    }
}
