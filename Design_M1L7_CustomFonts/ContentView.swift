//
//  ContentView.swift
//  Design_M1L7_CustomFonts
//
//  Created by tom montgomery on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    
    // 1)  Drag font into fonts folder so it gets included as an asset
    // 2) Ensure "copy items if needed is selected"
    // 3) Ensure "Add to targets" is selected.  (adds it as a bundled asset)
    // 4) Add "Fonts provided by application" record in plist with file name
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.custom("Bagrile", size: 48))
        }
        .padding()
        

        }
    init() {
        // Print out all the font families and the fonts
        for familyName in UIFont.familyNames {
            print("FAMILY: " + familyName)
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print(fontName)
            }
        }
    }
}

#Preview {
    ContentView()
}
