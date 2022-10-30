//
//  ContentView.swift
//  Memorizzing
//
//  Created by Kirill Willer on 22.10.22.
//

import SwiftUI

struct ContentView: View {
   // @Binding var vocabularyModel:[String]
    @ObservedObject var vocabularyModel = Vocabulary()
   // ContentView().environmentObject(Vocabulary())
    let vocModel = Vocabulary()
    var body: some View {
        TabView{
            AddWordView(word: $vocabularyModel.word, translation: $vocabularyModel.translation, describing: $vocabularyModel.describing)
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
            VocabularyView(word: $vocabularyModel.word, translation: $vocabularyModel.translation, describing: $vocabularyModel.describing)
                .tabItem {
                    Label("Vocabulary", systemImage: "list.dash")
                }
        } //TabView
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vocabularyModel: Vocabulary())
    }
}
