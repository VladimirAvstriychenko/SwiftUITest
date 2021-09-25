//
//  MainDataResponse.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import Foundation


struct FullResponse: Codable {
    var error: ErrorTypeFromJson
    var data: MainResponse
}

struct ErrorTypeFromJson: Hashable, Codable {
    var code: Int
    var message: String?
}
struct Block: Codable {
    var favorites: [CatalogueItemResponse]
    var vip: [VIPBlock]
    var categories: [String]
    var catalog: [CatalogueItemResponse]
    var new: [CatalogueItemResponse]
    var popular: [CatalogueItemResponse]
    var examples: String
    
//    case favourites = "Избранное"
//    case vip = "Премимум"
//    case categories = "Категории"
//    case catalogue = "Каталог"
//    case new = "Новые"
//    case popular = "Популярные"
//    case examples = "Примеры работ"

}

struct MainResponse: Codable {
    var title: String
    var image: String
    var catalogCount: String    
    var blocks: Block
}

struct VIPBlock: Codable {
    var id: String
    var image: ThumbAndFullImage
    var name: String
    var categories: [String]
}
