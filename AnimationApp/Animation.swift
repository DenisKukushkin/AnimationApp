//
//  Animation.swift
//  AnimationApp
//
//  Created by Denis Kukushkin on 29.11.2022.
//

import SpringAnimation
import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var title: String { """
                preset: \(name)
                curve: \(curve)
                force: \(round((force) * 100) / 100)
                duration: \(round((duration) * 100) / 100)
                delay: \(round((delay) * 100) / 100)
                """
        
    }
    
    static func getAnimation() -> Animation {
        Animation(name: AnimationPreset.allCases.randomElement()?.rawValue ?? "pop",
                  curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "easeOut",
                  force: Float.random(in: 1...2.5),
                  duration: Float.random(in: 1...2.5),
                  delay: Float.random(in: 0...0.7)
        )
    }
}
