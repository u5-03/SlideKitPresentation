//
//  SlideKitDemoSlide.swift
//  SlideKitPresentation
//
//  Created by yugo.sugiyama on 2022/10/09.
//

import SlideKit
import SwiftUI

extension String{
    // Ref: https://gist.github.com/iandundas/59303ab6fd443b5eec39
    static var randomEmoji: String {
        let emojiStart = 0x1F601
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(35)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji ?? "x"
    }
}

struct SlideKitDemoSlide: Slide {

    @State var emojiList: [String] = []

    let columns: [GridItem] = Array(repeating: .init(.flexible()),
                                    count: 6)

    var body: some View {
        HeaderSlide("This slide can use like iOS/MacOS app") {
            VStack(alignment: .center) {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(emojiList, id: \.self) { emojiString in
                            ZStack {
                                Rectangle()
                                    .aspectRatio(1.0, contentMode: .fit)
                                    .background(Color.clear)
                                Text(emojiString)
                                    .font(.system(size: 260))
                            }
                            .background(Color.black)
                            .cornerRadius(24)
                        }
                    }
                }
                Button {
                    withAnimation {
                        emojiList.shuffle()
                    }
                } label: {
                    Text("Suffule")
                        .frame(maxWidth: .infinity)
                        .frame(height: 120)
                        .background(Color.blue)
                        .cornerRadius(12)
                        .padding()
                }
            }
        }
        .onAppear {
            while emojiList.count < 30 {
                let emoji = String.randomEmoji
                if !emojiList.contains(emoji) {
                    emojiList.append(emoji)
                }
            }
        }
    }
}

struct SlideKitDemoSlide_Previews: PreviewProvider {
    static var previews: some View {
        SlidePreview {
            SlideKitDemoSlide()
        }
    }
}
