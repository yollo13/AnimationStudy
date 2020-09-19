//
//  Extension + UIButton.swift
//  AnimationStudy
//
//  Created by YolloArts on 18.09.2020.
//

import UIKit

//создаем расширение для класса кнопки. Можно вызвать для любой кнопки приложения
// Чтобы только для одной кнопки работало необходимо класс создавать для кнопки
extension UIButton {
    func pulsate() {
        //пульсация
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        
        pulse.fromValue = 0.5
        pulse.toValue = 1
        pulse.duration = 0.6
      
        pulse.autoreverses = true
//        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.duration = 1
        //добавляем  слою кнопки свойство
        layer.add(pulse, forKey: nil)
    }
}
