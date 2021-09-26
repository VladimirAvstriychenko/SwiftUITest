//
//  VipRowView.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import SwiftUI

struct VipRowView: View {
    
    var vipBlocks: [VIPBlock] = []
    init(_ blocks: [VIPBlock]) {
        vipBlocks = blocks
    }
    
    var body: some View {
        //NavigationView{
        VStack(alignment: .leading){
            HStack(){
                Text("Премиум")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                Text(String(vipBlocks.count))
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                    .foregroundColor(.gray)
            }
            
            ScrollView(.horizontal) {
                HStack{
                    ForEach(self.vipBlocks){ block in
                        VIPBlockView(block)
                        
                    }
                }
            }
        }
    }
}

struct VipRow_Previews: PreviewProvider {
    static var previews: some View {
        VipRowView([VIPBlock(id: "1", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "TestName dsdcds dsds ds sd ds ds ", categories: ["one", "two"])])
    }
}
