//
//  SEARCH.swift
//  task-3
//
//  Created by Rachit Tibrewal on 30/07/24.
//

import SwiftUI

struct SEARCH: View {
    @State private var username: String = ""
    var body: some View {
        VStack{
            TextField("search",text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(.top,20)
            Spacer()
            HStack{
                Image("Screenshot 2024-07-31 at 9.35.55 PM")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("Screenshot 2024-07-28 at 10.16.57 PM")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                
            }
            HStack{
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Image("Screenshot 2024-07-28 at 10.16.57 PM")
                    .resizable()
                    .frame(width: 120, height: 120)
                
            }
            HStack{
                Image("Screenshot 2024-07-28 at 10.16.57 PM")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                
            }
            HStack{
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Image("PASSPORT PHOTO")
                    .resizable()
                    .frame(width: 120, height: 120)
                
            }
            .padding(.all)
        }
    }
}

#Preview {
    SEARCH()
}
