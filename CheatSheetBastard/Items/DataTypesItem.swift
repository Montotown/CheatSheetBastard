//
//  FakeTopItem.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2022-01-04.
//

import Foundation

class DataTypesItem: TopicItem {
    init() {
        super.init(title: "Data types")
        appendTopic(IntegerTopic())
        appendTopic(DecimalTopic())
        appendTopic(StringTopic())
        appendTopic(BoolTopic())
        appendTopic(DateTopic())
        appendTopic(ValueReferenceTopic())
    }
    
}

