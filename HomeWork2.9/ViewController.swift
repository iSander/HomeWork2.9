//
//  ViewController.swift
//  HomeWork2.9
//
//  Created by Alex Sander on 26.02.2020.
//  Copyright © 2020 Alex Sander. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var actionButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var dampingLabel: UILabel!
    @IBOutlet weak var velocityLabel: UILabel!
    
    private let animations = Animation.getAnimations()
    private var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    private func updateUI() {
        actionButton.setTitle("Run: \(animations[currentAnimation].name)",
                                for: .normal)
        
        nameLabel.text = "Name: \(animations[currentAnimation].name)"
        curveLabel.text = "Curve: \(animations[currentAnimation].curve)"
        forceLabel.text = String(format: "Force: %.1f",
                                 animations[currentAnimation].force)
        durationLabel.text = String(format: "Duration: %.1f",
                                    animations[currentAnimation].duration)
        dampingLabel.text = String(format: "Damping: %.1f",
                                   animations[currentAnimation].damping)
        velocityLabel.text = String(format: "Velocity: %.1f",
                                    animations[currentAnimation].velocity)
    }
    
    @IBAction func animationAction() {
        let animation = animations[currentAnimation]
        springView.animation = animation.name
        springView.curve = animation.curve
        springView.force = animation.force
        springView.duration = animation.duration
        springView.damping = animation.damping
        springView.velocity = animation.velocity
        springView.animate()
        
        currentAnimation += 1
        
        if currentAnimation >= animations.count {
            currentAnimation = 0
        }
        
        updateUI()
    }
}

