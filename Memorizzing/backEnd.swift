//
//  backEnd.swift
//  Memorizzing
//
//  Created by Kirill Willer on 23.10.22.
//

import Foundation

class Vocabulary: NSObject, Identifiable, ObservableObject {
    var word:[String] = ["one", "two", "three"]
    var translation: [String] = ["один","тест","три"]
    var describing: [String] = ["number 1", " number 2", " number 3"]
    
}

class addNewWord{
func AddNewWorld(orig:String, trasn:String, descr:String) -> Bool{
     let vocabularyModel = Vocabulary()
    if orig != "" && trasn == ""{
        vocabularyModel.word.append(orig)
        vocabularyModel.translation.append(trasn)
        vocabularyModel.describing.append(descr)
        //return true
    }
    else{
        return false
    }
    return true
}
}
