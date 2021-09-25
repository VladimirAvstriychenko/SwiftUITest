//
//  VipRow.swift
//  DikidiTest
//
//  Created by Владимир on 24.09.2021.
//

import SwiftUI

struct VipRow: View {
    
    var vipBlocks: [VIPBlock] = []
    init(_ blocks: [VIPBlock]) {
        vipBlocks = blocks
    }
    
    var body: some View {
        NavigationView{
            navigationTitle("Премиум")
            ForEach(vipBlocks){ block in
                VIPBlockView(block)
                
            }
        }
    }
}

struct VipRow_Previews: PreviewProvider {
    static var previews: some View {
        VipRow()
    }
}
