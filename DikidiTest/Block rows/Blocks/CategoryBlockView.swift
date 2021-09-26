//
//  CategoryBlockView.swift
//  DikidiTest
//
//  Created by Владимир on 26.09.2021.
//

import SwiftUI

struct CategoryBlockView: View {
    var topBlock: CategoryBlock?
    var bottomBlock: CategoryBlock?
    init(inTopBlock: CategoryBlock?, inBottomBlock: CategoryBlock?) {
        topBlock = inTopBlock
        bottomBlock = inBottomBlock
    }
    
    var body: some View {
        VStack{
            if let topBlock = topBlock {
                URLImageView(topBlock.image.thumb)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 85, alignment: .center)
                    .cornerRadius(5)
                    .overlay(Text(topBlock.name)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                    )
            }
            
            if let bottomBlock = bottomBlock {
                URLImageView(bottomBlock.image.thumb)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 85, alignment: .center)
                    .cornerRadius(5)
                    .overlay(Text(bottomBlock.name)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                    )
            } else {
                URLImageView("")
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 85, alignment: .center)
                    .cornerRadius(5)
            }
            
        }
    }
}

struct CategoryBlockView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBlockView(inTopBlock: CategoryBlock(id: "1", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "Ногтевой сервис"), inBottomBlock: CategoryBlock(id: "2", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "Эпиляция, депиляция"))
    }
}
