//
//  SETTINGS.swift
//  task-3
//
//  Created by Rachit Tibrewal on 30/07/24.
//

import SwiftUI

struct ACCOUNT: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Image("PASSPORT PHOTO")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    Text("rachit")
                        .font(.callout)
                        .fontWeight(.medium)
                        .padding(.top,10)
                    
                }
                .padding(.trailing, 40)
                VStack{
                    Text("150")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Followers")
                        .font(.subheadline)
                }
                .padding(.trailing, 40)
                
                VStack{
                    Text("200")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Following")
                        .font(.subheadline)
                }
                
                .padding()
            }
            HStack{
                NavigationLink(destination: edit()){
                    Text("edit profile")
                     
                    
                        .font(.system(size: 15))
                        .padding()
                        .frame(width: 120,height: 30 )
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(25)
                    
                    NavigationLink(destination: edit()){
                        Text("share ")
                            .font(.system(size: 15))
                            .padding()
                            .frame(width: 120,height: 30 )
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                        
                        NavigationLink(destination: edit()){
                            Image(systemName: "person.fill.badge.plus")
                                .font(.system(size: 15))
                                .padding()
                                .frame(width: 80,height: 30 )
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                        }
                        
                        
                    }
                    
                }
            }
            HStack{
             
                Image("play.square")
                Text("reels")
                    .padding(.top,10)
                
                Image("play.person.and.background.dotted")
                Text("pic")
                    .padding(.top,10)
            }
            .padding(.horizontal)
            
        }
        .padding(.bottom,480)
    }
}

#Preview {
    ACCOUNT()
}

