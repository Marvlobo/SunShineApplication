//
//  navbar-home-view.swift
//  SunShine App
//
//  Created by Marvin Lobo on 11/1/22.
//

import SwiftUI

struct navbar_home_view: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan, Color.green, Color.mint,Color.red]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(.all, edges:.all)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image("ic-navbar-inapplogo")
               }
            ToolbarItem(placement: .navigationBarTrailing){
                Image("ic-navbar-call")
            }
            }
    }
}

struct navbar_home_view_Previews: PreviewProvider {
    static var previews: some View {
        navbar_home_view()
    }
}
