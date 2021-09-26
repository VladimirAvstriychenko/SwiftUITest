//
//  VIPBlockView.swift
//  DikidiTest
//
//  Created by Vladimir Avstriychenko on 25.09.2021.
//

import SwiftUI

struct VIPItemView: View {
    
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
                    
                
                    HStack{
                        ForEach(self.block!.categories.indices){ i in
                            
                            if i + 1 < self.block!.categories.count { //Да, я знаю, что это нарушение DRY, но swiftUI не давал мне здесь завести переменную и присвоить ей правильную строку, но я минимизировал повторяющийся код, вынеся его в отельный VIPTextView
                                VIPTextView(self.block!.categories[i] + ", ")
                             
                            } else {
                                VIPTextView(self.block!.categories[i])
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
                    .background(Color.red)
                    .cornerRadius(20)
                }
         
            }
        }
    }
}

struct VIPBlockView_Previews: PreviewProvider {
    static var previews: some View {
        VIPItemView(VIPBlock(id: "1", image: ThumbAndFullImage(thumb: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg?size=m", origin: "https://f1.test.dikidi.ru/c1/v3/3sg15ore13.jpg"), name: "TestName dsdcds dsds ds sd ds ds ", categories: ["one", "two"]))
    }
}
