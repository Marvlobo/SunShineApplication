//
//  ContentView.swift
//  SunShine App
//
//  Created by Marvin Lobo on 10/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationView{
                navbar_home_view()
            }
                .tabItem{
                    Image("ic-navbar-home")
                        .renderingMode(.template)
                }
            navbar_public_view()
                .tabItem{
                    Image("ic-navbar-public")
                        .renderingMode(.template)
                }
            navbar_sun_view()
                .tabItem{
                    Image("ic-navbar-sun")
                        .renderingMode(.template)
                }
            navbar_inbox_view_()
                .tabItem{
                    Image("ic-navbar-inbox")
                        .renderingMode(.template)
                }
            navbar_profile_view()
                .tabItem{
                    Image("ic-navbar-person")
                        .renderingMode(.template)
                }
            
        }
                
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
