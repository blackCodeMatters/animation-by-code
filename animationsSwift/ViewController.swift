//
//  ViewController.swift
//  animationsSwift
//
//  Created by Dustin M on 1/6/16.
//  Copyright © 2016 Vento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet var fractalImage: UIImageView!
    
    @IBOutlet var buttonLabel: UIButton!
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            buttonLabel.setTitle("Start", forState: .Normal)
            isAnimating = false
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            buttonLabel.setTitle("Stop", forState: .Normal)
            isAnimating = true
            
        }

        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation () {
        
        if counter == 5 {
            
            counter = 1
            fractalImage.image = UIImage(named: "frame1.jpg")
            
        }
            
        else {
            
            counter++
            fractalImage.image = UIImage(named: "frame" + "\(counter)" + ".jpg")
            
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

