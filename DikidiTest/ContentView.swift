//
//  ContentView.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    //@State var mainResponse: MainResponse?
    //var mainResponse: MainResponse
    @ObservedObject var model = BlockListViewModel()
   
    
    var body: some View {
        NavigationView{
//            URLImageView("https://api-beauty.test.dikidi.ru/assets/images/beauty_app/first3.png")
            if let response = model.mainResponse {
                List {
//                    ZStack {
//                                Text("Credit: Ricardo Gomez Angel")
//                                    .font(.callout)
//                                    .padding(6)
//                                    .foregroundColor(.white)
//                            }.background(Color.black)
//                            .opacity(0.8)
//                            .cornerRadius(10.0)
//                            .padding(6)
                    URLImageView(response.image)
//
                        .overlay(Text("Онлайн-запись и бронирование услуг")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 100.0)
                                    .frame(width: 200, height: 200, alignment: .center)
                            
                        
                        )
                        
                        
                    URLImageView("https://api-beauty.test.dikidi.ru/assets/images/beauty_app/first3.png")
//                    VipRow(response.blocks.vip)
//                    CategoryRow(response.blocks.categories)
//                    ExamplesRow(response.blocks.examples)
//                    CatalogRow(response.blocks.catalog)
//                    CatalogRow(response.blocks.catalog)
//                    CatalogRow(response.blocks.catalog)
//                    CatalogRow(response.blocks.catalog)
//                    CatalogRow(response.blocks.catalog)
                   
                }
            }
            
       }
//        .onAppear(
//           // perform: getFromNetwork
//        )
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
