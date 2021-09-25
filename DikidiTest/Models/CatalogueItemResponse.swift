//
//  CatalogueItemResponse.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import Foundation

struct CatalogueItemResponse: Codable, Identifiable {
    var id: String
    var name: String
    var image: ThumbAndFullImage
    var street: String
    var house: String
    var schedule: Schedule
    var lat: String
    var lng: String
    var categories: [String]
    var isMaster: Bool
    var currency: Currency
    
    
}

struct ThumbAndFullImage: Hashable, Codable {
    var thumb: String
    var origin: String
}

struct ScheduleStruct: Hashable, Codable{
    var day: String
    var workFrom: String
    var workTo: String
    
    
}


struct Schedule: Codable {
//    let doesHaveSchedule: Bool
    let doesHaveSchedule: Int
    let realSchedule: [ScheduleStruct]?

    // Where we determine what type the value is
    init(from decoder: Decoder) //throws {
    {
        guard let container = try? decoder.singleValueContainer() else {
            assertionFailure("Unable to parse")
            doesHaveSchedule = 0
            realSchedule = nil
            return
        }

        //Check for Int
        if let doesHaveSchedule1 = try? container.decode(Int.self) {
            doesHaveSchedule = doesHaveSchedule1
            realSchedule = nil
        
        } else {
        //Check for Array
            realSchedule = try? container.decode([ScheduleStruct].self)
            doesHaveSchedule = 0
        }
        
    }

    // We need to go back to a dynamic type, so based on the data we have stored, encode to the proper type
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try doesHaveSchedule != 0 ? container.encode(realSchedule) : container.encode(false)
    }
}

struct Currency: Hashable, Codable, Identifiable{
    var id: String
    var title: String
    var abbr: String
}
