//
//  ContentView.swift
//  Theme
//
//  Created by Mehadi Hasan on 28/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tabBarVisible = true
    // @State private var changeTheme: Bool = false
    
    var body: some View {
        
        TabView{
            Home()
                .tabItem {
                    Image(systemName: "house")
                }
            EditProfile()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                }
            
        }
        .zIndex(0)
        .edgesIgnoringSafeArea([.bottom])
        .tint(.primary)
        
        
    }
    
}

#Preview {
    ContentView()
}


