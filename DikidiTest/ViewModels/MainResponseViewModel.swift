//
//  MainResponseViewModel.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import Foundation
import Combine
import SwiftUI

final class MainResponseViewModel: ObservableObject{
    
    init() {
        fetchData()
    }
    
    @Published var mainResponse: MainResponse? {
        didSet {
            didChange.send(self)
        }
    }
    private func fetchData() {
        NetworkManager().getFromNetwork{
            self.mainResponse = $0
        }
    }
    let didChange = PassthroughSubject<MainResponseViewModel, Never>()
    
    var title: String {
        if let mainResponse = mainResponse {
            return mainResponse.title
        } else {
            return ""
        }
        
    }
    var image: String {
        if let mainResponse = mainResponse {
            return mainResponse.image
        } else {
            return ""
        }
        
    }
    var catalogCount: String{
        if let mainResponse = mainResponse {
            return mainResponse.catalogCount
        } else {
            return ""
        }
        
    }
    var blocks: Block? {
        if let mainResponse = mainResponse {
            return mainResponse.blocks
        } else {
            return nil
        }
        
    }
    
}
