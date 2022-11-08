//
//  ContentView.swift
//  SunShine App
//
//  Created by Marvin Lobo on 10/24/22.
//

import SwiftUI

struct ContentView: View {
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false
    var body: some View{
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
}
    //var body: some View {
        //TabView{
            //NavigationView{
               // navbar_home_view()
            //}
                //.tabItem{
                    //Image("ic-navbar-home")
                        //.renderingMode(.template)
               // }
            //NavigationView{
                //navbar_public_view()
            //}
                //.tabItem{
                    //Image("ic-navbar-public")
                        //.renderingMode(.template)
               // }
            //NavigationView{
                //navbar_sun_view()
            //}
            //.tabItem{
                //Image("ic-navbar-sun")
                    //.renderingMode(.template)
            //}
            //NavigationView{
                //navbar_inbox_view_()
            //}
                //.tabItem{
                    //Image("ic-navbar-inbox")
                        //.renderingMode(.template)
                //}
            //NavigationView{
                //navbar_profile_view()
            //}
                //.tabItem{
                    //Image("ic-navbar-person")
                        //.renderingMode(.template)
               // }
            
        //}
                
    //}
        
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
