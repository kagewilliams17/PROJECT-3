//
//  ViewController.swift
//  Program6
//
//  Created by Kage Williams on 5/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SwipeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SwipeLabel.isUserInteractionEnabled = true
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeUp(recognizer:)))
        
        swipeGesture.direction = .up
        
        SwipeLabel.addGestureRecognizer(swipeGesture)
        
        tapLabel.addGestureRecognizer(tapGestureObject)
        
        let tapGestureObject = UITapGestureRecognizer(target: self, action: #selector(self.tap(recognizer:)))
        
        
    }
    
    @objc func swipeUp(recognizer: UISwipeGestureRecognizer){
        performSegue(withIdentifier: "swipeSegueq", sender: self)
    }
    
    


}

