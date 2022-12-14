//
//  Animation.swift
//  AnimationApp
//
//  Created by Denis Kukushkin on 29.11.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String { """
                preset: \(name)
                curve: \(curve)
                force: \(round((force) * 100) / 100)
                duration: \(round((duration) * 100) / 100)
                delay: \(round((delay) * 100) / 100)
                """

    }
    
    static func getAnimation() -> Animation {
        Animation(name: DataManager.shared.animations.randomElement()?.rawValue ?? "pop",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeOut",
                  force: Float.random(in: 1...2.5),
                  duration: Float.random(in: 1...2.5),
                  delay: Float.random(in: 0...0.7)
        )
    }
}
