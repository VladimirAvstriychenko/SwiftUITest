//
//  ContentView.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    
    //@State var mainResponse: MainResponse?
    //var mainResponse: MainResponse
    @ObservedObject var model = BlockListViewModel()
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        NavigationView{

            if let response = model.mainResponse {
                List {

                    URLImageView(response.image)

                        .overlay(Text("Онлайн-запись и бронирование услуг")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 100.0)
                                    .frame(width: 200, height: 200, alignment: .center)
                        )
                    VipRowView(response.blocks.vip)
                    CategoryRowView(response.blocks.categories)
                    ExamplesRowView(response.blocks.examples)
                    CatalogRowView(response.blocks.catalog,
                                   lat: locationManager.lastLocation?.coordinate.latitude ?? 0,
                                   lng: locationManager.lastLocation?.coordinate.longitude ?? 0)
//                    CatalogRow(response.blocks.catalog)
//                    CatalogRow(response.blocks.catalog)
//                    CatalogRow(response.blocks.catalog)
//                    CatalogRow(response.blocks.catalog)
                   
                }
            }
            
       }

    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
