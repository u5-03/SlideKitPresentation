//
//  HobbySlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/09.
//

import SlideKit
import SwiftUI

struct HobbySlide: Slide {
    var body: some View {
        VStack {
            HeaderSlide("What I like") {
                Item("Eat something delicious, Cooking")
                Item("Watch animation / Read comics(ONEPIECE, 銀魂)")
                Item("Tennis, Cycling, Fishing")
                Item("Gadget collection, IoT device, Apple")
            }
            HeaderSlide("What I don't like / am not good at") {
                Item("Spicy food, Insect, Tabacco")
            }
        }
    }
}

struct HobbySlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            HobbySlide()
        }
    }
}

