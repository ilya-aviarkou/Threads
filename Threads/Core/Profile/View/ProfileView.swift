//
//  ProfileView.swift
//  Threads
//
//  Created by Ilya Averkov on 7.08.25.
//

import SwiftUI

struct ProfileView: View {
    @State var selectedFilter:ProfileThreadFilter = .threads
    @Namespace var animation
    
    
    private var filtersContainerWidth:CGFloat {
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        
        return UIScreen.main.bounds.width / count - 20
    }
    
    
    var body: some View {
        ScrollView{
            VStack {
                HStack (alignment: .top){
                    VStack (alignment: .leading, spacing: 12){
                        VStack (alignment: .leading, spacing: 4){
                            Text("Full Name")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text("User Name")
                                .font(.subheadline)
                        }
                        
                        Text("Description")
                            .font(.subheadline)
                        
                        Text("2 followers")
                            .font(.footnote)
                            .foregroundColor(Color(.systemGray3))
                    }
                    
                    Spacer()
                    
                    CircledProfileImage()
                }
                
                Button {
                    
                }label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(8)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(.black)
                .cornerRadius(8)
                .padding(.vertical, 10)
                
                
                HStack {
                    ForEach (ProfileThreadFilter.allCases) { filter in
                        VStack {
                            Text(filter.title)
                                .foregroundColor(selectedFilter  == filter ? .black : Color(.systemGray3))
                            if selectedFilter == filter {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .frame(height:1)
                                    .matchedGeometryEffect(id: "thread-filter", in: animation)
                            }
                            else {
                                Rectangle()
                                    .foregroundColor(Color(.clear))
                                    .frame(height:1)
                            }
                        }
                        .frame(width: filtersContainerWidth)
                        .onTapGesture {
                            withAnimation(.spring) {
                                selectedFilter = filter
                            }
                        }
                    }
                }

            }
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}
