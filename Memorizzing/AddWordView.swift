//
//  AddWordView.swift
//  Memorizzing
//
//  Created by Kirill Willer on 23.10.22.
//

import SwiftUI

struct AddWordView: View {
   
    @EnvironmentObject var Vocabulary: addNewWord
    
    @State private var originalWord:String = ""
    @State private var translateWord:String = ""
    @State private var describingWord:String = ""
    
    // var addNewWord = addNewWord()
    // Add model of function, witch will append new word in to voc arr
    
    var body: some View { 
        VStack(spacing: 30){
            Text("Memorizzing")
                .padding()
            Spacer()
            TextField("Enter your word!", text: $originalWord )
            TextField("Enter  translation of your word!", text: $translateWord )
            TextField("Enter describing of your word!", text: $describingWord )
           
            Button("Save"){
                Vocabulary.addNewWord(word: originalWord, trans: translateWord, description: describingWord)
                originalWord = ""
                translateWord = ""
                describingWord = ""
              
            }
           
            Spacer()
            
        }// Vstack
    }
}

struct AddWordView_Previews: PreviewProvider {
    static var previews: some View {
        AddWordView()
           
    }
}
