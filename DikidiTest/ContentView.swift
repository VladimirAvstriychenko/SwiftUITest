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
    @State var model = BlockListViewModel()
    
    
    var body: some View {
        NavigationView{
            if let response = model.mainResponse {
                List {
                    Text("ss")
                    Image(response.image)
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
