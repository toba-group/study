//
//  DesignView.swift
//  test-20190119
//
//  Created by kaichan on 1/19/19.
//  Copyright © 2019 Kaito Hattori. All rights reserved.
//

import UIKit

@IBDesignable class DesignView: UIView {
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.updatelayout()
        }
    }
    
    @IBInspectable var borderColor: UIColor = .black {
        didSet {
            self.updatelayout()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.updatelayout()
        }
    }
    
    @IBInspectable var shadowColor: UIColor = .lightGray {
        didSet {
            self.updatelayout()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = .zero {
        didSet {
            self.updatelayout()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
            self.updatelayout()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
            self.updatelayout()
        }
    }
    
    func updatelayout() {
        self.layer.borderWidth   = self.borderWidth
        self.layer.borderColor   = self.borderColor.cgColor
        self.layer.cornerRadius  = self.cornerRadius
        self.layer.shadowColor   = self.shadowColor.cgColor
        self.layer.shadowOffset  = self.shadowOffset
        self.layer.shadowOpacity = self.shadowOpacity
        self.layer.shadowRadius  = self.shadowRadius
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderWidth   = self.borderWidth
        self.layer.borderColor   = self.borderColor.cgColor
        self.layer.cornerRadius  = self.cornerRadius
        self.layer.shadowColor   = self.shadowColor.cgColor
        self.layer.shadowOffset  = self.shadowOffset
        self.layer.shadowOpacity = self.shadowOpacity
        self.layer.shadowRadius  = self.shadowRadius
    }
}
