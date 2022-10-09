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
            Item("Name: 杉山優悟 / Yugo.Sugiyama / Sugiy") {
                Item("Twitter: u5_03")
                Item("GitHub: u5-03")
            }
            Item("Job: iOS Engineer")
            Item("Birthday: 1994/03/22")
            Item("Birthplace: Fujisawa City, Kanagawa Prefecture")
            Item("Former job: SHOWROOM株式会社")
            Item("Interest: iOS Tech, Design")
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
