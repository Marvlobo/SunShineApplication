//
//  navbar-home-view.swift
//  SunShine App
//
//  Created by Marvin Lobo on 11/1/22.
//

import SwiftUI

struct Quote: Identifiable, Codable {
    let id = UUID()
    var author: String?
    var text: String?
    
    enum CodingKeys: String, CodingKey {
        case author, text
    }
}

struct navbar_home_view: View {
    @State var quotes = [Quote]()
    @State var randNum = 0
    
    var body: some View {
        ZStack() {
            LinearGradient(gradient: Gradient(colors: [Color("Gradient1.1"), Color("Gradient1.2"), Color("Gradient1.3")]),
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
            VStack() {
                Spacer()
                VStack(alignment: .center, spacing: 10) {
                    Text("Quote of the Day")
                        .font(.custom("Montserrat-VariableFont_wght", size: 28))
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                    
                    if quotes.count > 0 {
                        Text(quotes[randNum].text ?? "no text").font(.custom("Montserrat-VariableFont_wght", size: 18)).foregroundColor(.black)
                        Text(quotes[randNum].author ?? "no author").font(.custom("Montserrat-VariableFont_wght", size: 14)).foregroundColor(.blue)
                    }else{
                        ProgressView()
                    }
                    
                    Button("New Quote") {
                        randNum = Int.random(in: 0..<quotes.count)
                    }.buttonStyle(.bordered)
                }   .frame(width: 300)
                    .padding([.leading, .trailing, .bottom], 20)
                    .background(LinearGradient(gradient: Gradient(colors: [.white, .white.opacity(0)]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(20)
                    .task {
                        await loadData()
                        randNum = Int.random(in: 0..<quotes.count)
                }
            }
        }
    }
    
    func loadData() async{
        guard let url = URL(string: "https://type.fit/api/quotes") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
                quotes = try JSONDecoder().decode([Quote].self, from: data)
            //print("The count is",quotes.count)
            //numQuotes = quotes.count
            //print("numQuotes is",numQuotes)
            //print(quotes)
            //print(quotes[0].text ?? "Error")
        } catch {
            print(error)
            }
        }
    
}

struct navbar_home_view_Previews: PreviewProvider {
    static var previews: some View {
        navbar_home_view()
    }
}
