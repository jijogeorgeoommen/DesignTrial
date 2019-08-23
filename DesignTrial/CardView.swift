//
//  CardView.swift
//  DesignTrial
//
//  Created by JIJO G OOMMEN on 21/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit


@IBDesignable class CardView: UIView {
    var degree : Int!
    
    @IBInspectable var cornerradius : CGFloat = 20
    @IBInspectable var shadowOffsetWidth : CGFloat = 0
    @IBInspectable var shadowOffsetHeight : CGFloat = 5
    @IBInspectable var shadowColor = UIColor.black
    @IBInspectable var shadowOpacity : CGFloat = 0.5
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerradius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        var shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerradius)
        
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = Float(shadowOpacity)
        
        
        
    }
    
    
    
}

