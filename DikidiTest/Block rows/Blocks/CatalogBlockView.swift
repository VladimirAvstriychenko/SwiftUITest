//
//  CatalogBlockView.swift
//  DikidiTest
//
//  Created by Владимир on 26.09.2021.
//

import SwiftUI
import CoreLocation

struct CatalogBlockView: View {
    
    var block: CatalogueBlock?
    var myLat: Double
    var myLng: Double
    
    init(_ inBlock: CatalogueBlock?, lat: Double, lng: Double) {
        block = inBlock
        myLat = lat
        myLng = lng
    }
    
    var body: some View {
        if let block = block {
            HStack{
                URLImageView(block.image.thumb)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(5)
                VStack(alignment: .leading, spacing: 0.0){
                
                    Text(block.name)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    Text("\(block.street) \(block.house)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                    
                    let myCoordinate = CLLocation(latitude: myLat, longitude: myLng)
                    let blockCoordinate = CLLocation(latitude: Double(block.lat) ?? 0, longitude: Double(block.lng) ?? 0)

                    let distanceInMeters = blockCoordinate.distance(from: myCoordinate)
                    
                    Text(String(format: "%.1f", distanceInMeters/1000) + " км")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.leading)
                    
                    if let scheduletArray = block.schedule.realSchedule {
                        ForEach(scheduletArray.indices) { i in
                            Text("\(scheduletArray[i].day): \(scheduletArray[i].workFrom) - \(scheduletArray[i].workTo)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                        }
                        
                    }
                    
                    HStack{
                        Text(String(format: "%.1f", block.rating))
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                        Image("star\(block.rating.rounded())")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 20)
                            
                    }
                    
                }
            }
        }
    }
    
}

struct CatalogBlockView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogBlockView(CatalogueBlock(id: "1457",
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
                                        rating: 3.5), lat: 1, lng: 1)
    }
}

//extension Double {
//    func rounded(digits: Int) -> Double {
//        let multiplier = pow(10.0, Double(digits))
//        return (self * multiplier).rounded() / multiplier
//    }
//}
