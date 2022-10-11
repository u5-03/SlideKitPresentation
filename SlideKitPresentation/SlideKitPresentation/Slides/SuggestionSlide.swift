//
//  SuggestionSlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/09.
//

import SlideKit
import SwiftUI

struct SuggestionSlide: Slide {

    enum SlidePhasedState: Int, PhasedState {
        case initial, second, third
    }

    @Phase var phasedStateStore

    var body: some View {
        HeaderSlide("By the way...") {
            Item("Notice something about this slide?")
            if phasedStateStore.after(.second) {
                Item {
                    Label("This slide is created by Swift", image: "")
                        .font(.system(size: 50, weight: .bold))
                }
            }
            if phasedStateStore.after(.third) {
                Item("This slide uses SlideKit created by mtj0928") {
                    Item {
                        Link(destination: URL(string: "https://github.com/mtj0928/SlideKit")!) {
                            Text("mtj0928/SlideKit")
                        }
                    }
                    Item {
                        Link(destination: URL(string: "https://www.youtube.com/watch?v=TeXs08GvPGo?t=3010")!) {
                            Text("After iOSDC Japan 2022's movie")
                        }
                    }
                }
            }
        }
    }
}

struct SuggestionSlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            SuggestionSlide()
        }
    }
}
