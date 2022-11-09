//
//  backEnd.swift
//  Memorizzing
//
//  Created by Kirill Willer on 23.10.22.
//

import Foundation
import SwiftUI


struct VocStore: Identifiable{
    let id = UUID()
    var word:[String] = ["v", "v"]
    var translation: [String] = ["v", "vv"]
    var describing: [String] = ["v", "v"]
    
}


class addNewWord: ObservableObject {
    
    @Published  var mainStore:[VocStore] = []
    
    init(){
        #if DEBUG
        createDevData()
        #endif
    }
    
    func addNewWord(word: String, trans: String, description: String) {
       
            
            mainStore.insert(VocStore(word: [word], translation: [trans], describing: [description]), at: 0)

    }
}

extension addNewWord{
    func createDevData(){
        mainStore = [
        VocStore(
            word: ["Mum"], translation: ["Мама"], describing: ["Тот кто родил"]
        )
        ]
    }
}
