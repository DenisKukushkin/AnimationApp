//
//  ViewController.swift
//  AnimationApp
//
//  Created by Denis Kukushkin on 28.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.title

    }


    @IBAction func animationButtonPressed(_ sender: UIButton) {
        
        animationLabel.text = animation.title
        
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run\(animation.name)", for: .normal)
    }
    

}

