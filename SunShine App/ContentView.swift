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
            navbar_home_view()
                .tabItem{
                    Image("ic-navbar-home")
                }
            navbar_public_view()
                .tabItem{
                    Image("ic-navbar-public")
                }
            navbar_sun_view()
                .tabItem{
                    Image("ic-navbar-sun")
                }
            navbar_inbox_view_()
                .tabItem{
                    Image("ic-navbar-inbox")
                }
            navbar_profile_view()
                .tabItem{
                    Image("ic-navbar-person")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
