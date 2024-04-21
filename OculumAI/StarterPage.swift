//
//  StarterPage.swift
//  OculumAI
//
//  Created by 90310470 on 3/14/24.
//

import SwiftUI
import UIKit

struct View5: View {
    @State private var showScanView = false
   
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var brandGradient = Gradient(colors: [Color(red: 0.79, green: 0.48, blue: 0.99), Color(red: 0.69, green: 0.87, blue: 0.85)])
    var body: some View {
        NavigationView {
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 350, height: 800)
                        .background(.white)
                        .cornerRadius(45)
                        .padding(.bottom, 25)
                VStack {
                   VStack{
                        Text("Step 4")
                         .font(Font.custom("Koulen-Regular", size: 60))
                         .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                         .padding(.trailing, 53)
                        Text("upload the picture for analysis")
                         .font(Font.custom("Koulen-Regular", size: 35))
                         .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                         .padding(.leading, 60)
                        }
                            .padding(.trailing, 100)
                            .padding(.bottom, 450)
                                        
                    NavigationLink(destination: {
                                   ScannerView()
                               }, label: {

                                   Text("Done!")
                                       .font(Font.custom("Koulen-Regular", size: 29))
                                       .foregroundColor(Color.white)
                                       .padding(20)
                                       .bold()
                                       .frame(width: 290, height: 55)
                                       .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                                       .cornerRadius(12)
                                       .padding(.top, 10)

                                

                })
                    .navigationBarBackButtonHidden(true)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    
                                        
                                        
                    } //VStack end
                        .padding(.bottom, 50)
                    Image("upload_owl")
                        .resizable()
                        .frame(width: 200, height: 400)
                        .padding(.top, 90)
                } //ZStack end
                
                
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
            )
        }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            
        
    }
}

struct View4: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var brandGradient = Gradient(colors: [Color(red: 0.79, green: 0.48, blue: 0.99), Color(red: 0.69, green: 0.87, blue: 0.85)])
    var body: some View {
        NavigationView {
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 350, height: 800)
                        .background(.white)
                        .cornerRadius(45)
                        .padding(.bottom, 25)
                VStack {
                   VStack{
                        Text("Step 3")
                         .font(Font.custom("Koulen-Regular", size: 60))
                         .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                         .padding(.trailing, 53)
                        Text("Screenshot a high quality video frame")
                         .font(Font.custom("Koulen-Regular", size: 35))
                         .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                         .padding(.leading, 60)
                        }
                            .padding(.trailing, 100)
                            .padding(.bottom, 350)
                                        
                                        
                    NavigationLink(destination: View5()) {
                        Text("Next Step")
                    }
                    .font(Font.custom("Koulen-Regular", size: 29))
                    .foregroundColor(Color.white)
                    .padding(20)
                    .bold()
                    .frame(width: 290, height: 55)
                    .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(12)
                    .padding(.top, 70)
                                        
                                        
                    } //VStack end
                        .padding(.bottom, 50)
                    Image("picture_owl")
                        .resizable()
                        .frame(width: 350, height: 270)
                        .padding(.top, 100)
                } //ZStack end
                
                
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
            )
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct View3: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var brandGradient = Gradient(colors: [Color(red: 0.79, green: 0.48, blue: 0.99), Color(red: 0.69, green: 0.87, blue: 0.85)])
    var body: some View {
        NavigationView {
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 350, height: 800)
                        .background(.white)
                        .cornerRadius(45)
                        .padding(.bottom, 25)
                VStack {
                   VStack{
                        Text("Step 2")
                         .font(Font.custom("Koulen-Regular", size: 60))
                         .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                         .padding(.trailing, 53)
                        Text("take a video of the retina with flash")
                         .font(Font.custom("Koulen-Regular", size: 35))
                         .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                         .padding(.leading, 60)
                                            
                        }
                            .padding(.trailing, 100)
                            .padding(.bottom, 350)
                                        
                                        
                    NavigationLink(destination: View4()) {
                        Text("Next Step")
                    }
                    .font(Font.custom("Koulen-Regular", size: 29))
                    .foregroundColor(Color.white)
                    .padding(20)
                    .bold()
                    .frame(width: 290, height: 55)
                    .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(12)
                    .padding(.top, 70)
                                        
                                        
                    } //VStack end
                        .padding(.bottom, 50)
                    Image("picture_owl")
                        .resizable()
                        .frame(width: 350, height: 270)
                        .padding(.top, 100)
                } //ZStack end
                
                
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
            )
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct View2: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var brandGradient = Gradient(colors: [Color(red: 0.79, green: 0.48, blue: 0.99), Color(red: 0.69, green: 0.87, blue: 0.85)])
    var body: some View {
        NavigationView{
            VStack {
                ZStack{
                    Rectangle()
                    
                        .foregroundColor(.clear)
                        .frame(width: 350, height: 800)
                        .background(.white)
                        .cornerRadius(45)
                    //.ignoresSafeArea()
                        .padding(.bottom, 25)
                    VStack {
                        VStack{
                            Text("Step 1")
                                .font(Font.custom("Koulen-Regular", size: 60))
                                .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
                                .padding(.trailing, 53)
                            Text("dilate the eye")
                                .font(Font.custom("Koulen-Regular", size: 35))
                                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                            
                        }
                        .padding(.trailing, 100)
                        .padding(.bottom, 450)
                        
                        
                        NavigationLink(destination: View3()) {
                            Text("Next Step")
                        }
                        .font(Font.custom("Koulen-Regular", size: 29))
                        .foregroundColor(Color.white)
                        .padding(20)
                        .bold()
                        .frame(width: 290, height: 55)
                        .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(.top, 50)
                        
                        
                        
                    } //VStack end
                    .padding(.bottom, 50)
                    Image("dilation_owl")
                        .resizable()
                        .frame(width: 350, height: 250)
                } //ZStack end
                
                
                
            } //VStack end
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
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
            )
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
} //end of the step 1 view

struct StarterPage: View {
    
    var brandGradient = Gradient(colors: [Color(red: 0.79, green: 0.48, blue: 0.99), Color(red: 0.69, green: 0.87, blue: 0.85)])
    @State private var name: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("start_owl")
                    .padding(.top, 35)
                
                Rectangle()
                
                    .foregroundColor(.clear)
                    .frame(width: 400, height: 600)
                    .background(.white)
                    .cornerRadius(10)
                    .padding(.top, 650.0)
                    .ignoresSafeArea()
                Image("wing")
                    .padding(.leading, 250)
                    .padding(.top, 80)
                
                Image("wing2")
                    .padding(.trailing, 250)
                    .padding(.top, 80)
                
                Text("SIGN UP")
                    .font(Font.custom("Koulen-Regular", size: 85))
                    .foregroundColor(.white)
                    .frame(width: 340, height: 700, alignment: .topLeading)
                    .ignoresSafeArea()
                    .padding(.bottom, 50)
                
                Text("OCULUM AI")
                    .font(Font.custom("Koulen-Regular", size: 40))
                    .foregroundColor(.white)
                    .frame(width: 340, height: 550, alignment: .topLeading)
                VStack {
                    TextField("Email or Username", text: $name)
                        .padding()
                        .frame(width:322, height:50)
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                        .overlay(Capsule().stroke(LinearGradient(
                            gradient: brandGradient,
                            startPoint: .leading,
                            endPoint: .trailing),
                                                  lineWidth: 5))
                        .padding(.bottom, 10)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width:322, height:50)
                        .cornerRadius(20)
                        .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                        .overlay(Capsule().stroke(LinearGradient(
                            gradient: brandGradient,
                            startPoint: .leading,
                            endPoint: .trailing),
                                  lineWidth: 5))
                    NavigationLink(destination: View2()) {
                        Text("GET STARTED!")
                            .font(Font.custom("Koulen-Regular", size: 29))
                            .foregroundColor(Color.white)
                            .padding(20)
                            .bold()
                            .frame(width: 322, height: 55)
                            .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(12)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                    
                } // end of nav
                    .padding(.top, 25)
                    .padding(.bottom, 25)
                /* Button {
                    print("Button pressed")
                } label: {
                    Text("GET STARTED!")
                        .font(Font.custom("Koulen", size: 20))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(20)
                        .bold()
                        .frame(width:322, height:55)
                        .background(LinearGradient(gradient: brandGradient, startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                }
                .foregroundColor(.clear)
                .frame(width: 350, height: 100)
                .background(.white)
                .cornerRadius(20)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            */
                    
                }//VStack Bracket
                .padding(.top, 460.0)
                
                
                
            }//ZStack bracket
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
            )
            
        }
        
    }//view bracket
}
    
struct StarterPage_Previews: PreviewProvider {
    static var previews: some View {
        StarterPage()
    }
}


//#Preview {
//    StarterPage()
//}
