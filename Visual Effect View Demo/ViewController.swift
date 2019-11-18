//
//  ViewController.swift
//  Visual Effect View Demo
//
//  Created by Pawan kumar on 31/07/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
     private var blurView: UIVisualEffectView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    @IBAction func EffectButtonTap(_ sender: Any) {
    
        setupBlur(isShow: true, onView: self.profileImageView)
    }
    @IBAction func EffectClearButtonTap(_ sender: Any) {
        
        UIView.animate(withDuration: 0.3) {
          
            self.setupBlur(isShow: false, onView: self.profileImageView)
        }
    }
    
    func setupBlur(isShow: Bool, onView: UIView) {
     
        if isShow == true {
           
            if self.blurView != nil {self.blurView.removeFromSuperview()}
            
            blurView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
            blurView.frame = CGRect.init(x: 0, y: 0, width: onView.frame.size.width, height: onView.frame.size.height)
            blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            blurView.alpha = 0.8
            onView.addSubview(blurView)
            
        } else {
             self.blurView.removeFromSuperview()
        }
        
    }
}

