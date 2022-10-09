//
//  StaffIdentityCardSlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/09.
//

import SlideKit
import SwiftUI

struct StaffIdentityCardSlide: Slide {
    var body: some View {
        HeaderSlide("I bought AirTag for Staff Identity Card") {
            Item("I attached AirTag to Staff Identity Card for security") {
                Item("AirTag's Info") {
                    VStack(alignment: .leading) {
                        Link("AirTag", destination: URL(string: "https://www.apple.com/jp/airtag/")!)
                        Link("AirTag - Amazon", destination: URL(string: "https://amzn.to/3el7CgP")!)
                    }
                }
                Item("Staff Identity Card with AirTag") {
                    Image("staffIdentityCard")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct StaffIdentityCardSlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            StaffIdentityCardSlide()
        }
    }
}
