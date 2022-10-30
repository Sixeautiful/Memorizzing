//
//  AddWordView.swift
//  Memorizzing
//
//  Created by Kirill Willer on 23.10.22.
//

import SwiftUI

struct AddWordView: View {
    @Binding var word:[String] 
    @Binding var translation:[String]
    @Binding var describing:[String]
    
    @State private var originalWord:String = ""
    @State private var translateWord:String = ""
    @State private var describingWord:String = ""
    
    var body: some View { 
        VStack(spacing: 30){
            Text("Memorizzing")
                .padding()
            Spacer()
            TextField("Enter your word!", text: $originalWord )
            TextField("Enter  translation of your word!", text: $translateWord )
            //Text("field for word")
            TextField("Enter describing of your word!", text: $describingWord )
            //Text("field for word translation")
            //Text("discribing(optional)")
            Text(translation[0])
            Button("Save"){
                word[0] = originalWord
                originalWord = ""
                translation[0] = translateWord
                translateWord = ""
               describing[0] = describingWord
                describingWord = ""
                
            }
           
            Spacer()
            
        }// Vstack
    }
}

struct AddWordView_Previews: PreviewProvider {
    static var previews: some View {
        AddWordView(word: .constant([""]), translation: .constant([""]), describing: .constant([""]))
    }
}
