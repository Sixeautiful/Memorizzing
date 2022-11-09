//
//  ContentView.swift
//  Memorizzing
//
//  Created by Kirill Willer on 22.10.22.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
        TabView{
            AddWordView()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
            VocabularyView()
                .tabItem {
                    Label("Vocabulary", systemImage: "list.dash")
                }
        } //TabView
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(addNewWord())
    }
}
