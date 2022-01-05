//
//  ConditionalsItem.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2022-01-05.
//

import Foundation

class ConditionalsItem: TopicItem {
    init() {
        super.init(title: "Conditionals")
        appendTopic(IfTopic())
        appendTopic(CaseTopic())
    }
    
}
