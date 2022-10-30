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
