//
//  ScannerView.swift
//  OculumAI
//
//  Created by 90310470 on 4/20/24.
//

import SwiftUI
import UIKit

struct ScannerView: View {
    var brandGradient = Gradient(colors: [Color(red: 0.79, green: 0.48, blue: 0.99), Color(red: 0.69, green: 0.87, blue: 0.85)])
    
    var body: some View {
        ZStack{
            storyboardview().edgesIgnoringSafeArea(.all)
        }
        .frame(width: 428, height: 940)
        .background(
            LinearGradient(
                stops: [
                    Gradient.Stop(color: Color(red: 0.79, green: 0.48, blue: 0.99), location: 0.00),
                    Gradient.Stop(color: Color(red: 0.69, green: 0.87, blue: 0.85), location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0.01),
                endPoint: UnitPoint(x: 0.57, y: 0.64)
            )
        ) //This is the screen background end
    }
}


#Preview {
    ScannerView()
}

struct storyboardview: UIViewControllerRepresentable{
    func makeUIViewController(context content: Context) -> UIViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "Home")
        return controller
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context){
        
    }
}
