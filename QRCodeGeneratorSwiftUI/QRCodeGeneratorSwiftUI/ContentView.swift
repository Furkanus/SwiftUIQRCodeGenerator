//
//  ContentView.swift
//  QRCodeGeneratorSwiftUI
//
//  Created by Furkan Hanci on 7/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("QR Code Generator ").padding()
            // Write Your QR Code text Here!!!!
            QRCodeView(url: "Developer")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
