//
//  CustomView.swift
//  test-20190119
//
//  Created by kaichan on 1/19/19.
//  Copyright © 2019 Kaito Hattori. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var title: String! {
        didSet {
            self.titleLabel.text = self.title
        }
    }
    
    var image: UIImage! {
        didSet {
            self.imageView.image = self.image
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    private func loadNib(){
        let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! UIView
        self.addSubview(view)
        view.autoLayout(to: self)
    }
}
