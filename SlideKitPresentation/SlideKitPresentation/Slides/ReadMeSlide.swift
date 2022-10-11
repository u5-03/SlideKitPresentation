//
//  ReadMeSlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/09.
//

import SlideKit
import SwiftUI

struct ReadMeSlide: Slide {
    var body: some View {
        HeaderSlide("README") {
            Item("Name: 杉山優悟 / Yugo.Sugiyama / Sugiy")
            Item("Job: iOS Engineer")
            Item("Birthday: 1994/03/22")
            Item("Birthplace: Fujisawa City, Kanagawa Prefecture")
            Item("Company: (株)野村総合研究所 (Former: SHOWROOM株式会社)")
            Item("Interest: iOS Tech, Design")
            Item("Other: I originally wanted to be a teacher, and I have all the social studies teacher licenses!")
        }
    }
}

struct ReadMeSlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            ReadMeSlide()
        }
    }
}
