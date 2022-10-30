//
//  VocabularyView.swift
//  Memorizzing
//
//  Created by Kirill Willer on 23.10.22.
//

import SwiftUI

struct VocabularyView: View {
    @Binding var word:[String]
    @Binding var translation:[String]
    @Binding var describing:[String]
    var body: some View {
        
        HStack {
            VStack {
                ForEach(word, id: \.self){ word in
                    Text("\(word)")
                }
                
            }
            VStack {
                ForEach(translation, id: \.self){ word in
                    Text("\(word)")
                }
            }
            VStack {
                ForEach(describing, id: \.self){ word in
                    Text("\(word)")
                }
            }
        }
    }
}

struct VocabularyView_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyView(word: .constant([""]), translation: .constant([""]), describing: .constant([""]))
    }
}
