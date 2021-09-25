//
//  DataManager.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import Foundation

//let swiftbook = UserResponse(id: 1001, name: "Swiftbook", profileImage: "swiftbook", email: "info@swiftbook.ru", likes: "54.4K", text: "Обучение созданию приложений на Swift для всех!\nСамое крупное и дружное сообщество по разработке под iOS :)")
//
//let materialResponse: [ProductsResponse] = load("coursesModelData.json")
//let userResponse: [UserResponse] = load("userModelData.json")



//let mainResponseTest = getFromNetwork(url: "https://api-beauty.test.dikidi.ru/home/info")
//var mainResponse: MainResponse? = nil

//func getFromNetwork(url: String){
//    
//    guard let url = URL(string: url) else {return}
//    let userData = ["city_id": "468902"]
//    var request = URLRequest(url: url)
//    request.httpMethod = "POST"
//    //header
//    request.addValue("application/json",forHTTPHeaderField: "Content-Type")
//    request.addValue("maJ9RyT4TJLt7bmvYXU7M3h4F797fUKofUf3373foN94q4peAM",forHTTPHeaderField: "Authorization")
//    guard let httpBody = try? JSONSerialization.data(withJSONObject: userData, options: []) else {return}
//    request.httpBody = httpBody
//    let session = URLSession.shared
//    session.dataTask(with: request) { (data, response, error) in
//        guard let response = response,
//            let data = data else {return}
//        
//        //print(response)
//        do {
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            let fullResponse = try decoder.decode(FullResponse.self, from: data)
//            mainResponse = fullResponse.data
//        } catch {
//            print(error)
//            fatalError("Couldn't parse response")
//        }
//        
//        
//    }.resume()
//}

//func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//        else {
//            fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}
