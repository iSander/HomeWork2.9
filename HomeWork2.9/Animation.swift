//
//  Animation.swift
//  HomeWork2.9
//
//  Created by Alex Sander on 26.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import Foundation
import CoreGraphics
import Spring

struct Animation {
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let damping: CGFloat
    let velocity: CGFloat
}

private let animations: [Spring.AnimationPreset] = [
    .Shake,
    .Pop,
    .Morph,
    .Squeeze,
    .Wobble,
    .Swing,
    .FlipX,
    .FlipY,
    .Fall,
    .SqueezeLeft,
    .SqueezeRight,
    .SqueezeDown,
    .SqueezeUp,
    .SlideLeft,
    .SlideRight,
    .SlideDown,
    .SlideUp,
    .FadeIn,
    .FadeOut,
    .FadeInLeft,
    .FadeInRight,
    .FadeInDown,
    .FadeInUp,
    .ZoomIn,
    .ZoomOut,
    .Flash
]

private let curves: [Spring.AnimationCurve] = [
    .EaseIn,
    .EaseOut,
    .EaseInOut,
    .Linear,
    .Spring,
    .EaseInSine,
    .EaseOutSine,
    .EaseInOutSine,
    .EaseInQuad,
    .EaseOutQuad,
    .EaseInOutQuad,
    .EaseInCubic,
    .EaseOutCubic,
    .EaseInOutCubic,
    .EaseInQuart,
    .EaseOutQuart,
    .EaseInOutQuart,
    .EaseInQuint,
    .EaseOutQuint,
    .EaseInOutQuint,
    .EaseInExpo,
    .EaseOutExpo,
    .EaseInOutExpo,
    .EaseInCirc,
    .EaseOutCirc,
    .EaseInOutCirc,
    .EaseInBack,
    .EaseOutBack,
    .EaseInOutBack
]

extension Animation {
    static func getAnimations() -> [Animation] {
        var anims = [Animation]()
        for i in 0..<animations.count {
            anims.append(Animation(name: animations[i].rawValue,
                                   curve: curves[Int.random(in: 0..<curves.count)].rawValue,
                                   force: CGFloat.random(in: 0..<5),
                                   duration: CGFloat.random(in: 1..<5),
                                   damping: CGFloat.random(in: 0..<1),
                                   velocity: CGFloat.random(in: 0..<1)))
        }
        return anims
    }
}
