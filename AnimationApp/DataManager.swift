//
//  DataManager.swift
//  AnimationApp
//
//  Created by Denis Kukushkin on 01.12.2022.
//


import SpringAnimation

class DataManager {
    static let shared = DataManager()
        
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
    
}
