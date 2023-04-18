//
//  ButtonViewController.swift
//  UIKIt-Basic
//
//  Created by Students on 23.12.2022.
//

import UIKit

class ButtonViewController: UIViewController {
    
    @IBOutlet weak var play: UIButton!
    
    private let button = UIButton(frame: CGRect(x: 10, y: 10, width: 200, height: 100))
                                  
            
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(button)
        
    }
    
    
    @IBAction func play(_ sender: UIButton) {
        print("Play")
    }
    
    
    /*
    */

}
