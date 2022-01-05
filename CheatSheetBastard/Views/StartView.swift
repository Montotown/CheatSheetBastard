//
//  StartView.swift
//  CheatSheetBastard
//
//  Created by Per Ollas on 2021-07-12.
//

import SwiftUI


struct StartView: View {
    @EnvironmentObject var model: Model
    @AppStorage("language") var favoriteLanguage: String = ProgrammingLanguage.Swift.rawValue
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Programming language", selection: $favoriteLanguage) {
                    ForEach(ProgrammingLanguage.allCases) { language in
                        Text(language.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                List(model.items, children: \.items) { item in
                    if let topic = item.topic {
                        NavigationLink(destination: TopicView(topic: topic)
                                        .navigationBarTitle(topic.title, displayMode: .inline)) {
                            Text(topic.title)
                        }
                    } else {
                        Text(item.title)
                    }
                }
            }
            //.padding(.horizontal, -16)
            //.listStyle(GroupedListStyle())  // Den här gör att listan inte har padding
            .navigationBarTitle("Cheat Sheet", displayMode: .inline)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            .environmentObject(Model.instance)
    }
}
