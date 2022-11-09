//
//  VocabularyView.swift
//  Memorizzing
//
//  Created by Kirill Willer on 23.10.22.
//

import SwiftUI

struct VocabularyView: View {
    
    @EnvironmentObject var Vocabulary: addNewWord
   
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                //showhistoryView.toggle()
            } label: {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding()

            VStack {
                Text("Vocabulary")
                    .font(.title)
                    .padding()
            

                Form {
                    ForEach(Vocabulary.mainStore) { word in
                        HStack{
                            ForEach(word.word, id: \.self) { word in
                              Text(word)
                                }
                            Spacer()
                            ForEach(word.translation, id: \.self) { word in
                                  Text(word)
                                }
                            Spacer()
                            ForEach(word.describing, id: \.self) { word in
                                  Text(word)
                                }
                        }
                          
                    }
                }
                
            }
        }
    }
}

struct VocabularyView_Previews: PreviewProvider {
    static var previews: some View {
        VocabularyView()
            .environmentObject(addNewWord())
    }
}
