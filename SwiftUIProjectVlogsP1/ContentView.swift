//
//  ContentView.swift

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State var textPaddingV = 25.0
    @State var backColor = Color.blue
    @State var textColor = Color.white
    @State var radius = 10.0
    var body: some View {
        VStack(spacing: 20)
        {
            Text("SwiftUI Projects Vlogs #1")
                .bold()
                .padding(.vertical, textPaddingV)
                .padding(.horizontal, 15)
                .background(backColor)
                .foregroundStyle(textColor)
                .cornerRadius(radius)
                .font(.title2)
            
            HStack(spacing:20){
                Button(action: {
                    textPaddingV = 30.0
                }) {
                    Text("Change Text Padding")
                }
                Button(action: {
                    backColor = Color.back
                }) {
                    Text("Change Text Background Color")
                }
                Button(action: {
                    showingAlert = true
                    backColor = Color.back
                    textColor = Color.text
                }) {
                    Text("Change Text Color")
                        .alert("Warning! To use this feature, it changes the background of the text. Pressing this button means you accept it.", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                    Button(action: {
                        radius = 20.0
                    }) {
                        Text("Change Text Radius")
                    }
                    
                    
                }
 
                }
            
        Button(action: {
            textPaddingV = 25.0
            backColor = Color.blue
            textColor = Color.white
            radius = 10.0
            }) {
                Text("Reset All!")
                    .bold()
                    .foregroundStyle(.white)
                    .padding(15)
                    .background(Color.reset)
                    .cornerRadius(20)
            }
        }
    }
}
#Preview {
    ContentView()
}
