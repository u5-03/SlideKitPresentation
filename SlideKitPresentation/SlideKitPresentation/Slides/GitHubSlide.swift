//
//  GitHubSlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/10.
//

import SlideKit
import SwiftUI

struct GitHubSlide: Slide {
    var body: some View {
        HeaderSlide("This slide repository is uploaded to GitHub") {
            Item {
                Link(destination: URL(string: "https://github.com/u5-03/SlideKitPresentation")!) {
                    Text("u5-03/SlideKitPresentation")
                }
            }
        }
    }
}

struct GitHubSlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            GitHubSlide()
        }
    }
}
