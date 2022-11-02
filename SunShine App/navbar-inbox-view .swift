//
//  navbar-inbox-view .swift
//  SunShine App
//
//  Created by Marvin Lobo on 11/1/22.
//

import SwiftUI

struct navbar_inbox_view_: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan, Color.green, Color.mint,Color.red]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(.all, edges:.all)
                    
    }
}

struct navbar_inbox_view__Previews: PreviewProvider {
    static var previews: some View {
        navbar_inbox_view_()
    }
}
