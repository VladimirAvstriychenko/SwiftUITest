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
            URLImageView(block.image.thumb)
                .fixedSize()
                .frame(width: 50, height: 30)
                
            Text(block.name)
        }
    }
}

struct VIPBlockView_Previews: PreviewProvider {
    static var previews: some View {
        VIPBlockView(nil)
    }
}
