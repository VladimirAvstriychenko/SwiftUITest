//
//  BlockListViewModel.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import Foundation
import Combine
import SwiftUI

final class BlockListViewModel: ObservableObject{
    
    init() {
        fetchData()
    }
    
    @Published var mainResponse: MainResponse? {
        didSet {
            didChange.send(self)
        }
    }
    private func fetchData() {
        NetworkService().getFromNetwork{
            self.mainResponse = $0
        }
    }
    let didChange = PassthroughSubject<BlockListViewModel, Never>()
}
