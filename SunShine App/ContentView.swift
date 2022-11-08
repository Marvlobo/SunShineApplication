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
            NavigationView{
                navbar_public_view()
            }
                .tabItem{
                    Image("ic-navbar-public")
                        .renderingMode(.template)
               }
            NavigationView{
                navbar_sun_view()
    
            }
            .tabItem{
                Image("ic-navbar-sun")
                    .renderingMode(.template)
            }
            NavigationView{
                navbar_inbox_view_()
            }
                .tabItem{
                    Image("ic-navbar-inbox")
                        .renderingMode(.template)
            }
            NavigationView{
                navbar_profile_view()
            }
                .tabItem{
                    Image("ic-navbar-person")
                        .renderingMode(.template)
               }
            
        }.preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
