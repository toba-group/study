//
//  ViewController.swift
//  test-20190119
//
//  Created by kaichan on 1/19/19.
//  Copyright © 2019 Kaito Hattori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.cView.title = "ore ore---"
        self.cView.image = UIImage(named:"apple.png")
    }
}

