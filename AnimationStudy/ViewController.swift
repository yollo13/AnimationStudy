//
//  ViewController.swift
//  AnimationStudy
//
//  Created by YolloArts on 18.09.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
    private var originCoordinate: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // текуще кординаты
        originCoordinate = coreAnimationView.frame.origin.x
        //        print("\(originCoordinate)")
        
    }
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat],
            //в animations указываем объект для которых будет работать
            animations: {//frame - рамка (есть еще граница бордер - это скругленная)
                //origin - обращение к координатной сетке
                if self.coreAnimationView.frame.origin.x == self.originCoordinate { //проверяем, что в центре
                    self.coreAnimationView.frame.origin.x -= 40
                    
                }
            })
                
            }
        }
    

