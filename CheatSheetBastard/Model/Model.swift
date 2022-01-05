//
//  Model.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2021-07-31.
//

import Foundation

class Model: ObservableObject {
    static let instance = Model()
    
    var items: [TopicItem] = []
    
    init() {
        items.append(DataTypesItem())
        items.append(ConditionalsItem())
    }
    
}
