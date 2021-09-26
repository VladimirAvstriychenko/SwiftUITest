//
//  VIPTextView.swift
//  DikidiTest
//
//  Created by Владимир on 27.09.2021.
//

import SwiftUI

struct VIPTextView: View {
    
    var textString: String = ""
    init(_ inString: String) {
        textString = inString
    }
    
    var body: some View {
        Text(textString)
            .truncationMode(.tail)
            .foregroundColor(.gray)
            .font(.caption)
            .multilineTextAlignment(.leading)
    }
}

struct CategoryTextView_Previews: PreviewProvider {
    static var previews: some View {
        VIPTextView("Test category")
    }
}
