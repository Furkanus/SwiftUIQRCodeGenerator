//
//  QRCodeView.swift
//  QRCodeGeneratorSwiftUI
//
//  Created by Furkan Hanci on 7/25/20.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeView : View {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var url : String
    var body: some View {
        Image(uiImage: generateQRCode(url))
            .interpolation(.none)
            .resizable().frame(width: 150, height: 150, alignment: .center)
    }
    
    func generateQRCode(_ url: String) -> UIImage {
        let data = Data(url.utf8)
        filter.setValue(data, forKey: "inputMessage")
        
        if let qrCodeImage = filter.outputImage {
            if let qrCodeImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent) {
                return UIImage(cgImage: qrCodeImage)
            }
        } 
            return UIImage(systemName: "Furkan") ?? UIImage()
        
    }
}


