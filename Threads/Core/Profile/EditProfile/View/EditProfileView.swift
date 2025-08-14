//
//  EditProfileView.swift
//  Threads
//
//  Created by Ilya Averkov on 13.08.25.
//

import SwiftUI

struct EditProfileView: View {
    @State var bio = ""
    @State var link = ""
    @State var isPrivateProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack (){
                    HStack{
                        VStack (alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)
                            
                            Text("Charles Leclerc")
                        }
                        
                        Spacer()
                        
                        CircledProfileImage()
                    }
                    
                    Divider()
                    
                    
                    HStack{
                        VStack (alignment: .leading, spacing: 15) {
                            Text("Bio")
                                .fontWeight(.semibold)
                            
                            TextField("Enter your bio....", text: $bio)
                        }
                                                
                    }
                    
                    Divider()
                    
                    HStack{
                        VStack (alignment: .leading, spacing: 15) {
                            Text("Link")
                                .fontWeight(.semibold)
                            
                            TextField("Enter your link...",text:$link)
                        }
                                                
                    }
                    
                    Divider()
                    
                    Toggle("Private Profile", isOn:$isPrivateProfile)


                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
                
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done"){
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
