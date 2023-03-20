//
//  CircleImage.swift
//  Demo
//
//  Created by Simran Sharma on 16/03/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("tree")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
