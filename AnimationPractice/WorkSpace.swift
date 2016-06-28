//
//  WorkSpace.swift
//  AnimationPractice
//
//  Created by 藤井陽介 on 2016/06/18.
//  Copyright © 2016年 touyou. All rights reserved.
//

import UIKit

class WorkSpace: CanvasController {

    override func setup() {
        //Work your magic here.
        let lemon = Image("13474242_302125086786611_1385593864_n")!
        lemon.center = Point(canvas.center.x, canvas.center.y + 200)
        canvas.add(lemon)
        let soap = Image("13459674_302125100119943_791338520_n")!
        soap.center = Point(canvas.center.x, canvas.center.y - 200)
        canvas.add(soap)
        let square = Rectangle(frame: Rect(0.0, 0.0, 50, 200))
        square.center = Point(canvas.center.x, canvas.center.y - 200)
        square.fillColor = Color(UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0))
        canvas.add(square)
        
        // animation
        let colorAnimation = ViewAnimation(duration: 2.0, animations: {
            square.fillColor = Color(UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
        })
        let animation = ViewAnimation(duration: 3.0, animations: {
            square.center = Point(self.canvas.center.x, self.canvas.center.y + 100)
        })
        let sequence = ViewAnimationSequence(animations: [animation, colorAnimation])
        
        // gesture recognizer
        square.addTapGestureRecognizer {_,_,_ in
            sequence.animate()
        }
        square.addSwipeGestureRecognizer {_,_,_,_ in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }


}

