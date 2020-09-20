//
//  AnimationData.swift
//  AnimationStudy
//
//  Created by YolloArts on 20.09.2020.
//

import Foundation

struct AnimationData {
    
    let animation: String
    
}

extension AnimationData {
    static func getAnimationsList() -> [String] {
        return ["zoomIn", "zoomOut", "squeeze", "flash", "wobble"]
    }
}
