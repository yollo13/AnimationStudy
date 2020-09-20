//
//  ViewController.swift
//  AnimationStudy
//
//  Created by YolloArts on 18.09.2020.
//


import Spring

class ViewController: UIViewController {
    
    // MARK: - IBoutlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springViewLabel: UILabel!
    @IBOutlet var springButtonPress: SpringButton!
    
    // MARK: - Properties
    private var originCoordinate: CGFloat?
    private var animationIndex = 0
    
    let animationNames = AnimationData.getAnimationsList()
    
    // MARK: - Override func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springViewLabel.text = "Погнали!"
        springButtonPress.setTitle(animationNames[animationIndex], for: .normal)
     }
    
    // MARK: - @IBActions methods
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        nextAnimation()
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.animate()
    }
    
    // MARK: - Other methods
    func nextAnimation() {
        
        if animationIndex < animationNames.count - 1  {
            springAnimationView.animation = animationNames[animationIndex]
            springViewLabel.text = animationNames[animationIndex]
            animationIndex += 1
            springButtonPress.setTitle(animationNames[animationIndex], for: .normal)
        } else {
            springAnimationView.animation = animationNames[animationIndex]
            springViewLabel.text = animationNames[animationIndex]
            animationIndex = 0
            animationIndex += 1
            springButtonPress.setTitle(animationNames[animationIndex], for: .normal)
        }
    }
    
}


