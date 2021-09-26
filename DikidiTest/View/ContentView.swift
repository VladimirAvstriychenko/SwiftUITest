//
//  ContentView.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    
    @ObservedObject var model = MainResponseViewModel()
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        NavigationView{
            
            if let response = model.mainResponse {
                //ScrollView{
                    //VStack{
                        
                        List {
                            
                            URLImageView(model.image)

                                .overlay(Text("Онлайн-запись и бронирование услуг")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                            .multilineTextAlignment(.center)
                                            .padding(.top, 100.0)
                                            .frame(width: 200, height: 200, alignment: .center)
                                )

                            
                            VipRowView(model.blocks!.vip)
                            CategoryRowView(model.blocks!.categories)
                            ExamplesRowView(model.blocks!.examples)
                            CatalogRowView(model.blocks!.catalog,
                                           lat: locationManager.lastLocation?.coordinate.latitude ?? 0,
                                           lng: locationManager.lastLocation?.coordinate.longitude ?? 0)

                           
                        }
                   // }
                //}
            }
            
       }

    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
