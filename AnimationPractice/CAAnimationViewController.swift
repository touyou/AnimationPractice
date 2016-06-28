//
//  CAAnimationViewController.swift
//  AnimationPractice
//
//  Created by 藤井陽介 on 2016/06/18.
//  Copyright © 2016年 touyou. All rights reserved.
//

import UIKit

class CAAnimationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func bigButton(bt: UIButton) {
        bt.transform = CGAffineTransformMakeScale(0.1, 0.1)
        
        UIView.animateWithDuration(2.0, animations: {
                bt.transform = CGAffineTransformMakeScale(2.0, 2.0)
            }, completion: { completed in
                UIView.animateWithDuration(2.0, animations: { bt.center = CGPoint(x: bt.center.x, y: bt.center.y - 100)
                    }, completion: { completed in
                        self.performSegueWithIdentifier("toC4", sender: nil)
                })
            })
    }
}
