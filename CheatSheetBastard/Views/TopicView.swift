//
//  TopicView.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2021-07-31.
//

import SwiftUI

struct TopicView: View {
    var topic: Topic
    
    @EnvironmentObject var model: Model
    @AppStorage("language") var favoriteLanguage: String = ProgrammingLanguage.Swift.rawValue
    
    var body: some View {
        VStack(alignment: .leading) {
            if let description = topic.description {
                Text(description)
            }
            Picker("Programming language", selection: $favoriteLanguage) {
                ForEach(ProgrammingLanguage.allCases) { language in
                    Text(language.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if let bnf = bnf() {
                Text(bnf + "\n")
                    .font(.system(size: 12.0))
                    .lineLimit(nil)
            }
            
            if let example = example() {
                Text(example)
                    .font(.system(size: 12.0, design: .monospaced))
                    .lineLimit(nil)
            }
            Spacer()
        }
        .padding()
    }
    
    func bnf() -> String? {
        if let language = ProgrammingLanguage(rawValue: favoriteLanguage),
           let tmp = topic.bnf[language] {
            return tmp
        }
        return nil
    }
    
    func example() -> String? {
        if let language = ProgrammingLanguage(rawValue: favoriteLanguage),
           let tmp = topic.example[language] {
            return tmp
        }
        return nil
    }
}

struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView(topic: IntegerTopic())
            .environmentObject(Model.instance)
    }
}
