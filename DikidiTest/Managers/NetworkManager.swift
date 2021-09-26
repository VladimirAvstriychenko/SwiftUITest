//
//  NetworkService.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import Foundation

class NetworkManager {
    func getFromNetwork(completion: @escaping (MainResponse) -> ()) {
        let urlString: String = "https://api-beauty.test.dikidi.ru/home/info"
        guard let url = URL(string: urlString) else {return}
        let userData = ["city_id": "468902"]
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        //header
        request.addValue("application/json",forHTTPHeaderField: "Content-Type")
        request.addValue("maJ9RyT4TJLt7bmvYXU7M3h4F797fUKofUf3373foN94q4peAM",forHTTPHeaderField: "Authorization")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: userData, options: []) else {return}
        request.httpBody = httpBody
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            guard let response = response,
                  let data = data else {return}
            
            //print(response)
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let fullResponse = try decoder.decode(FullResponse.self, from: data)
                DispatchQueue.main.async {
                    // update our UI
                    completion(fullResponse.data)
                }
               
            } catch {
                print(error)
                fatalError("Couldn't parse response")
            }
            
            
        }.resume()
    }
}
