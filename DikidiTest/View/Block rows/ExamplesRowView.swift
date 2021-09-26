//
//  ExamplesRowView.swift
//  DikidiTest
//
//  Created by Владимир on 26.09.2021.
//

import SwiftUI

struct ExamplesRowView: View {
    
    var examples: String = ""
    init(_ exampleString: String) {
        examples = exampleString
    }
    
    var body: some View {
        VStack(alignment: .leading){
            
                Text("Коллекция работ")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                
                URLImageView(examples)
                
            HStack(spacing: 40){
                    Text("Посмотрите фото работ и выберите, куда записаться")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                HStack{
                        Button("Посмотреть"){
                            print("Button tapped")
                        }
                        .padding(7.0)
                        .foregroundColor(.blue)
                        
                    }
                    
                    .background(Color(#colorLiteral(red: 0.8761885762, green: 0.8763357997, blue: 0.8761691451, alpha: 1)))
                    .cornerRadius(5)
                    
                }
            
        }
            
    }
}

struct ExamplesRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExamplesRowView("ttps://api-beauty.dikidi.ru/assets/images/beauty_app/examples/3.jpg")
    }
}
