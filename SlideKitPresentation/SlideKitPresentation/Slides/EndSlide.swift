//
//  EndSlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/10.
//

import SlideKit
import SwiftUI

struct EndSlide: Slide {
    var body: some View {
        Text("From now on, creating slides by Swift is standard??🤣")
            .font(.system(size: 76, weight: .bold))
    }
}

struct EndSlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            EndSlide()
        }
    }
}
