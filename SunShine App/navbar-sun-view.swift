//
//  navbar-sun-view.swift
//  SunShine App
//
//  Created by Marvin Lobo on 11/1/22.
//

import SwiftUI

struct navbar_sun_view: View {
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false
    var body: some View {
        ZStack{
            if capturedImage != nil{
                Image(uiImage: capturedImage!)
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
            }else{
                Color(UIColor.systemBackground)
            }
            VStack{
                Spacer()
                Button(action:{
                    isCustomCameraViewPresented.toggle()
                },label:{
                    Image(systemName: "camera.fill")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                })
                .padding(.bottom)
                .sheet(isPresented: $isCustomCameraViewPresented, content:{
                    CustomCameraView(capturedImage: $capturedImage)
                })
            }
        }
    }
    struct navbar_sun_view_Previews: PreviewProvider {
        static var previews: some View {
            navbar_sun_view()
        }
    }
}
