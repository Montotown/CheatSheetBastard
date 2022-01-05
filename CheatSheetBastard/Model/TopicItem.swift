//
//  TopicSection.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2021-07-31.
//

import Foundation

class TopicItem: Identifiable {
    let id = UUID()
    var title: String
    var items: [TopicItem]? = nil
    var topic: Topic? = nil

    init(title: String) {
        self.title = title
        self.items = []
    }
    
    init(topic: Topic) {
        title = topic.title
        self.topic = topic
    }
    
    func appendTopic(_ topic: Topic) {
        if items == nil {
            items = []
        }
        items!.append(TopicItem(topic: topic))
    }
}
