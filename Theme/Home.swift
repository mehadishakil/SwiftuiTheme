//
//  Home.swift
//  Theme
//
//  Created by Mehadi Hasan on 1/12/24.
//

import SwiftUI

struct Home: View {
    @Environment(\.colorScheme) private var scheme
    @State var show = false
    @AppStorage("userTheme") private var userTheme: Theme = .system
    
    var body: some View {
        ZStack {
            VStack{
                Text("Hello World")
                    .foregroundStyle(.primary)
                
                Button(action: {
                    show.toggle()
                }, label: {
                    Text("Appearance").bold().font(.title2)
                        .frame(width: 200, height: 60)
                        .foregroundColor(.blue)
                        .background(.foreground, in: RoundedRectangle(cornerRadius: 20))
                })
                .sheet(isPresented: $show) {
                    DLMode(show: $show, scheme: scheme)
                        .presentationDetents([.height(280)])
                        .presentationBackground(.clear)
                }
            }
            .preferredColorScheme(userTheme.colorScheme)
        }
    }
}

#Preview {
    Home()
}
