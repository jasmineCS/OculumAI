//
//  ScanView.swift
//  OculumAI
//
//  Created by 90310470 on 3/28/24.
//

import SwiftUI
import PhotosUI
import CoreML

struct ScanView: View {
    var brandGradient = Gradient(colors: [Color(red: 0.79, green: 0.48, blue: 0.99), Color(red: 0.69, green: 0.87, blue: 0.85)])
    
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @State private var uploadDefultImageShow = true
    @State private var upload = Image("upload")
   
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 350, height: 430)
                    .background(.white)
                    .cornerRadius(23)
                    .padding(.top, 25)
                
                Text("WELCOME,")
                    .font(Font.custom("Koulen-Regular", size: 60))
                    .foregroundColor(.white)
                    .frame(width: 340, height: 700, alignment: .topLeading)
                    .ignoresSafeArea()
                    .padding(.bottom, 50)
                
                Text("JOE SMITH")
                    .font(Font.custom("Koulen-Regular", size: 40))
                    .foregroundColor(.white)
                    .frame(width: 340, height: 550, alignment: .topLeading)
                    .padding(.bottom, 55)
                // Title and background rect.
               
                Image("upload")
                    .resizable()
                    .frame(width: 300, height: 300) //placeholder image
                    .cornerRadius(23)
                    .padding(.top, 25)
                if (uploadDefultImageShow == false) {
                    Image("upload").hidden()
                        //.zIndex(0.0)
                }
                VStack {
                    
                    avatarImage?
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    PhotosPicker("UPLOAD RETINAL IMAGE", selection: $avatarItem, matching: .images)
                        .font(Font.custom("Koulen-Regular", size: 29))
                        .foregroundColor(Color.white)
                        .padding(20)
                        .bold()
                        .frame(width: 290, height: 55)
                        .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(.top, 10)
                    
                }
                .onChange(of: avatarItem) {
                    Task {
                        if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                            avatarImage = loaded
                            uploadDefultImageShow = false
                        } else {
                            print("Failed")
                        }
                    }
                }
            }
            .frame(width: 428, height: 926)
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
    } //Body end
}//View End

#Preview {
    ScanView()
}
