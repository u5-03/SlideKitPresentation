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
        HeaderSlide("This slide repository is uploaded to GitHub / Blog Post") {
            Item("GitHub") {
                Item {
                    Link(destination: URL(string: "https://github.com/u5-03/SlideKitPresentation")!) {
                        Text("u5-03/SlideKitPresentation")
                    }
                }
            }
            Item("Blog Post") {
                Item {
                    Link(destination: URL(string: "https://ulog.sugiy.com/swift-slide-slidekit")!) {
                        Text("I made a self-introduction slide with Swift!(Japanese)")
                    }
                }
                Item {
                    Link(destination: URL(string: "https://ulog.sugiy.com/en/swift-slide-slidekit")!) {
                        Text("I made a self-introduction slide with Swift!(English)")
                    }
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
