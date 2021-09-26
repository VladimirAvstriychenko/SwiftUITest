//
//  CatalogRowView.swift
//  DikidiTest
//
//  Created by Владимир on 26.09.2021.
//

import SwiftUI

struct CatalogRowView: View {
    
    var catalogBlocks: [CatalogueBlock] = []
    var myLat: Double
    var myLng: Double
    
    init(_ blocks: [CatalogueBlock], lat: Double, lng: Double) {
        catalogBlocks = blocks
        myLat = lat
        myLng = lng
    }
    
    var body: some View {
        HStack(){
            Text("Каталог")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
            
            Text(String(catalogBlocks.count))
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
        }
        
        VStack(alignment: .leading){
            ForEach(self.catalogBlocks){ block in
                CatalogBlockView(block, lat: myLat, lng: myLng)
            }
        }
    }
}

struct CatalogRowView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogRowView([CatalogueBlock(id: "1457",
                                       name: "Фри",
                                       image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3aauaq1vcd.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3aauaq1vcd.jpg?size=f"),
                                       street: "Некрасова",
                                       house: "396",
                                       schedule: Schedule(0, realSchedule: nil),
                                       lat: "57.631571",
                                       lng: "39.873925",
                                       categories: [],
                                       isMaster: true,
                                       currency: Currency(id: "RUB", title: "Российский рубль", abbr: "руб."),
                                       rating: 5.0)], lat: 1, lng: 1)
    }
}
