//
//  CreateThreadView.swift
//  Threads
//
//  Created by Ilya Averkov on 14.08.25.
//

import SwiftUI

struct CreateThreadView: View {
    @State var thread = ""
    
     var isPostButtonEnabled: Bool {
        return !thread.isEmpty
    }
    
    var isShowClearIcon : Bool {
        return !thread.isEmpty
    }
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack (alignment: .top){
                    CircledProfileImage()
                    
                    VStack (alignment: .leading){
                        Text("User name")
                        
                        TextField("Start a thread...", text : $thread, axis: .vertical)
                            
                    }
                    .font(.footnote)
                    
                   if ( isShowClearIcon) {
                        Button {
                            thread = ""
                        }label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                        }
                    }

                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("New thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .topBarLeading){
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem (placement: .topBarTrailing){
                    Button("Post") {
                        
                    }
                    .opacity(isPostButtonEnabled ? 1 : 0.5)
                    .disabled(!isPostButtonEnabled)
                }
            }
            .foregroundColor(.black)

        }
    }
}

#Preview {
    CreateThreadView()
}
