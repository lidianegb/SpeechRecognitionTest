//
//  ContentView.swift
//  SpeechRecognitionModule
//
//  Created by Lidiane Gomes Barbosa on 27/03/23.
//

import SwiftUI

struct ContentView: View {
    var speech = SpeechRecognition()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
           
            Button {
                speech.didTapSpeechRecognitionButton()
            } label: {
                Text("Hello, world!")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
