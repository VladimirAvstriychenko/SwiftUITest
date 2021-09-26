//
//  CategoryRow.swift
//  DikidiTest
//
//  Created by Владимир on 26.09.2021.
//

import SwiftUI

struct CategoryRowView: View {
    var categoryBlocks: [CategoryBlock] = []
    init(_ blocks: [CategoryBlock]) {
        categoryBlocks = blocks
    }
    
    var body: some View {
        //NavigationView{
        VStack(alignment: .leading){
            HStack{
                Text("Категории")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                
                Text(String(categoryBlocks.count))
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                    .foregroundColor(.gray)
            }
            ScrollView(.horizontal) {
                HStack{
//                    ForEach(self.categoryBlocks){ block in
//                        CategoryBlockView(block)
//
//                    }
                    ForEach(self.categoryBlocks.indices) { i in
                        if i%2 == 0 {
                            if i + 2 > self.categoryBlocks.count {
                                CategoryBlockView(inTopBlock:self.categoryBlocks[i], inBottomBlock: nil)
                            } else {
                                CategoryBlockView(inTopBlock: self.categoryBlocks[i], inBottomBlock: self.categoryBlocks[i+1])
                            }
                        }
                        
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView([CategoryBlock(id: "1", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "Ногтевой сервис"),
                     CategoryBlock(id: "2", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "Эпиляция, депиляция"),
                     CategoryBlock(id: "3", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "Парикмахерские услуги")])
    }
}
