//
//  URLImageView.swift
//  DikidiTest
//
//  Created by Vladimir Avstriychenko on 25.09.2021.
//

import SwiftUI

struct URLImageView: View {
    
    @ObservedObject var imageLoader:ImageLoader
    @State var image:UIImage = UIImage()
    
    init(_ url:String) {
        imageLoader = ImageLoader(urlString:url)
    }
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            //.frame(width:100, height:100)
            .onReceive(imageLoader.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
            }
    }
}

struct URLImageView_Previews: PreviewProvider {
    static var previews: some View {
        URLImageView( "https://api-beauty.test.dikidi.ru/assets/images/beauty_app/first3.png")
    }
}
