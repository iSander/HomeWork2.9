//
//  Animation.swift
//  HomeWork2.9
//
//  Created by Alex Sander on 26.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import Spring

struct Animation {
    let name: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let damping: CGFloat
    let velocity: CGFloat
    
    /*
     // for use in one label IBOutlet !!!
    var description: String {
        return """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
 */
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
                                   curve: curves.randomElement()?.rawValue ?? "easeIn",
                                   force: CGFloat.random(in: 0..<5),
                                   duration: CGFloat.random(in: 1..<5),
                                   damping: CGFloat.random(in: 0..<1),
                                   velocity: CGFloat.random(in: 0..<1)))
        }
        return anims
    }
}
