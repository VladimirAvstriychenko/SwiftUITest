//
//  VIPBlockView.swift
//  DikidiTest
//
//  Created by Vladimir Avstriychenko on 25.09.2021.
//

import SwiftUI

struct VIPBlockView: View {
    
    var block: VIPBlock?
    
    init(_ inBlock: VIPBlock?) {
        block = inBlock
    }
    
    var body: some View {
        if let block = block {
            HStack{
                URLImageView(block.image.thumb)
                    .frame(width: 60, height: 60, alignment: .center)
                    .cornerRadius(5)
                VStack(alignment: .leading, spacing: 0.0){
                Text(block.name)
                    .lineLimit(2)
                    .truncationMode(.tail)
                    .multilineTextAlignment(.leading)
                    //.frame(width: 150, height: 50, alignment: .leading)
                
                    HStack{
                        ForEach(self.block!.categories.indices){ i in
                            
                            if i + 1 < self.block!.categories.count {
                                Text(self.block!.categories[i] + ", ")
                                    .truncationMode(.tail)
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                    .multilineTextAlignment(.leading)
                            } else {
                                Text(self.block!.categories[i])
                                    .truncationMode(.tail)
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                    .multilineTextAlignment(.leading)
                            }
                            
                            
                        }
                    }
                   
                
                }
                .padding()
               
                HStack{
                        Button("ЗАПИСАТЬСЯ"){
                            print("Button tapped")
                        }
                        .padding(.horizontal, 10.0)
                        .foregroundColor(.white)
                    //}
                    //.padding(.trailing, 1.0)
                    .background(Color.red)
                    .cornerRadius(20)
                }
                //.frame(alignment: .trailing)
//                    .frame(
//                                maxWidth: .infinity,
//                                maxHeight: .infinity,
//                        alignment: Alignment.trailing
//                            )
            }
            
            
    
            
            
        }
        //Text("Test")
    }
}

struct VIPBlockView_Previews: PreviewProvider {
    static var previews: some View {
        VIPBlockView(VIPBlock(id: "1", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "TestName dsdcds dsds ds sd ds ds ", categories: ["one", "two"]))
    }
}
