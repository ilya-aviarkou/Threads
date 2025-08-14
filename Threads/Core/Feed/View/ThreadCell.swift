//
//  ThreadCell.swift
//  Threads
//
//  Created by Ilya Averkov on 7.08.25.
//

import SwiftUI

let mockText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."

struct ThreadCell: View {
    var body: some View {
        VStack {

            HStack (alignment: .top){
                CircledProfileImage()
                
                VStack (alignment: .leading, spacing: 4){
                    HStack{
                        Text("Username")
                        
                        Spacer()
                        
                        Text("10 h.")
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.systemGray3))
                        }
                    }
                    
                    Text(mockText)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack (spacing: 16){
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                            
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                            
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                            
                        }
                        
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    
                }
            }
            Divider()
        }
        .padding()

    }
}

#Preview {
    ThreadCell()
}
