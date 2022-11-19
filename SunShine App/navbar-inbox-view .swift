//
//  navbar-inbox-view .swift
//  SunShine App
//
//  Created by Marvin Lobo on 11/1/22.
//

import SwiftUI

struct navbar_inbox_view_: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Gradient2.1"), Color("Gradient2.2"), Color("Gradient2.3")]),
                       startPoint: .top,
                       endPoint: .bottom)
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

struct navbar_inbox_view__Previews: PreviewProvider {
    static var previews: some View {
        navbar_inbox_view_()
    }
}
