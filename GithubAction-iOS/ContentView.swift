//
//  ContentView.swift
//  GithubAction-iOS
//
//  Created by Islam Md. Zahirul on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                        Text("Text")
                Text("This is test")
            }
            
            VStack {
                Text("VSTack")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
