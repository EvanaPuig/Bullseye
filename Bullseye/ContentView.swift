//
//  ContentView.swift
//  SwiftUIIntro
//
//  Created by Evana Margain Puig on 07/11/19.
//  Copyright © 2019 Evana Margain. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("This is my first Swift UI App")
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text("Tap Me!")
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text("Hello There!"), message: Text("This is an alert"), dismissButton: .default(Text("Ok")))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
