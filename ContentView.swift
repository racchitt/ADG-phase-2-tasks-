//
//  ContentView.swift
//  task-3
//
//  Created by Rachit Tibrewal on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
               home().tabItem { Image(systemName: "house")
                Text("home")}
            SEARCH().tabItem { Image(systemName: "magnifyingglass")
                Text("search")}
            SETTINGS()
                .tabItem { Image(systemName: "plus.viewfinder")
                Text("add stories")}
            ACCOUNT()
                .tabItem { Image(systemName: "person.crop.circle.fill")
                Text("account")}
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
