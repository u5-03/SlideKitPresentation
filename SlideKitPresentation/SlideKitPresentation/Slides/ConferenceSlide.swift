//
//  ConferenceSlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/09.
//

import SlideKit
import SwiftUI

struct ConferenceSlide: Slide {
    var body: some View {
        HeaderSlide("Best Effort in 2022") {
            Item("iOSDC2022 in 9/10~9/12") {
                Item("One of the biggest conference of iOS community in Japan")
                Item("I participated as a speaker and staff") {
                    HStack(alignment: .center) {
                        Image("iosdc")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image("iosdcPresentation")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image("presentTitle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
        }
    }
}

struct ConferenceSlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            ConferenceSlide()
        }
    }
}
