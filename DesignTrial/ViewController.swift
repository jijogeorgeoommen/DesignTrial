//
//  ViewController.swift
//  DesignTrial
//
//  Created by JIJO G OOMMEN on 21/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardviewoutlet: CardView!
    @IBOutlet var passwordtext: UITextField!
    @IBOutlet var usernametext: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg    = UIImageView(image: UIImage(named: "backthree.jpg"))
        bg.frame  = self.view.frame
        
        self.view.addSubview(bg)
        self.view.addSubview(cardviewoutlet)
        
       // self.cardviewoutlet.transform = CGAffineTransform(rotationAngle: 60.0 * .pi / 180)
        
        passwordtext.center.x = self.view.frame.width + 50
        
        UIView.animate(withDuration: 1, delay: 00, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .allowAnimatedContent , animations: {
            self.passwordtext.center.x = self.view.frame.width / 2
        }, completion: nil)
        
        
        usernametext.center.x = self.view.frame.width + 50
        
        UIView.animate(withDuration: 3, delay: 00, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .allowAnimatedContent , animations: {
            self.usernametext.center.x = self.view.frame.width / 2
        }, completion: nil)
        
        
        
    }

    
    @IBAction func SubmitAction(_ sender: UIButton) {
        
        if usernametext.hasText && passwordtext.hasText {
          
            if (usernametext.text == "aa" && passwordtext.text == "aa"){
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfilePageid")as! ProfilePage
                
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
            else {
                sender.pulsate()
            }
            
            
            }
            
            
        
        else {
            sender.shake()
        }
    }
    
}


